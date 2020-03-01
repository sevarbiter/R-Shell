#include <iostream>
#include <string>
#include "base.hpp"
#include "connector.hpp"
#include "or.hpp"
#include "and.hpp"
#include "semiColon.hpp"
#include "command.hpp"
#include "exit.hpp"
#include "paren.hpp"
#include "test.hpp"
#include "left.hpp"
#include "right.hpp"
#include "redirection.hpp"
#include "pipe.hpp"
#include <queue>
#include <exception>

using namespace std;

base* findChain(string & input);
base* parsing(string & input, int* count);

int main (int argv, char* argc[]){
	//queue<base*> order;
	string input;
	//cout<<"$ ";
	//getline(cin, input);
	bool flag = true;
	while(flag) {
		base* b = new semiColon();
		base* s = nullptr;
		int count = 0;
		queue<base*> order;
		do {
			cout<<"$ ";
			getline(cin, input);
			count = 0;
			try {
				s = parsing(input, &count);
			} catch(exception& e) {
				cout<<"syntax error"<<endl;
			}
			//cout<<"here"<<endl;
			if(count%2 != 0) {
				cout<<"Error: uneven parentheses"<<endl;
			}
		} while(count%2 !=0);	
		//execute(order, &flag);
		//cout<<"before compute"<<endl;
		//b = new command("echo hello");
		if(s != nullptr)
			s->compute(&flag);
		//cout<<"after compute"<<endl;
	}
	
	return 0;
}

base* findChain(string & input) {
	base* currentRoot = nullptr;
	base* b;
	int round = 0;
	//cout<<"inside chain: "<<input<<endl;
	size_t condition = input.find_first_of("&;|<>");
	if(condition != string::npos) {
	while(condition != string::npos&&(input.at(condition) == '<'||input.at(condition) == '>'||(input.at(condition) == '|'&&input.at(condition+1) != '|'))) {
		size_t first = input.find_first_of("|<>");
		if(input.substr(0,first-1).compare("exit") == 0 || input.substr(0,first).compare("exit") == 0) {
                                b = new Exit(); //exit command
                                if(currentRoot == nullptr) {
                                        currentRoot=b;
                                        round++;
                                } else {
                                        currentRoot->setRight(b);
                                }
                                input = input.substr(first);	
		} else {
                                char tester = input.at(first-1);
                                size_t quote = input.find("\"");
                                string possible = "";
                                if(quote != string::npos && quote < first) { //looking for quotation marks
                                        possible = input.substr(0,quote+1);
                                        input = input.substr(quote+1);
                                        quote = input.find("\"");
                                        if(quote != string::npos) {
                                                possible = possible+input.substr(0,quote+1);
                                                input = input.substr(quote+1);
                                        }
                                        first = input.find_first_of("&|;)<>");

                                        possible.erase(possible.find("\""), 1);
                                        possible.erase(possible.find("\""), 1);
                                        if(!input.empty()) {
                                                if(first != 0) {
                                                        tester = input.at(first-1);
                                                        if(tester == ' ') {
                                                                b = new command(possible);
                                                        } else {
                                                                b = new command(possible);

                                                        }
                                                } else {
                                                        b = new command(possible);
                                                }
                                        } else {
                                                b = new command(possible);
                                        }
                                        if(currentRoot == nullptr) {
                                                currentRoot=b;
                                                round++;
                                        } else {
                                                currentRoot->setRight(b);
                                        }
                                }
		
				else {
                                        if(tester == ' ') {
                                                string test_tester = "";
                                                test_tester = input.substr(0,first-1);
                                                if(test_tester.substr(0,4).compare("test") == 0) {
                                                        test_tester = test_tester.substr(5);
                                                        b = new test(test_tester);
                                                } else if (test_tester.at(0) == '[') {
                                                        test_tester = test_tester.substr(1);
                                                        if(test_tester.at(0) == ' ') {
                                                                test_tester=test_tester.substr(1);
                                                        }
                                                        test_tester = test_tester.substr(0,test_tester.size()-1);
                                                        if(test_tester.at(test_tester.size()-1) == ' ')
                                                                test_tester = test_tester.substr(0, test_tester.size()-1);
                                                        b = new test(test_tester);
                                                } else {
                                                        b = new command(test_tester);
                                                }
                                        } else {
                                                string test_tester = input.substr(0,first);
                                                if(test_tester.substr(0,4).compare("test") == 0) {
                                                        test_tester = test_tester.substr(5);
                                                        b = new test(test_tester);
                                                } else if (test_tester.at(0) == '[') {
                                                        test_tester = test_tester.substr(1);
                                                        if(test_tester.at(0) == ' ') {
                                                                test_tester=test_tester.substr(1);
                                                        }
                                                        test_tester = test_tester.substr(0,test_tester.size()-1);
                                                        if(test_tester.at(test_tester.size()-1) == ' ')
                                                                test_tester = test_tester.substr(0, test_tester.size()-1);
                                                        b = new test(test_tester);
                                                } else {
                                                        b = new command(test_tester);
                                                }
                                        }
                                        if(currentRoot == nullptr) {
                                                currentRoot=b;
                                                //round++;
                                        } else {
                                                currentRoot->setRight(b);
                                        }
                                }
                                if(input.empty()) {
                                        return currentRoot;
                                }
                                input = input.substr(first);
		}
		if(input.empty()) {
                        return currentRoot;
                }
		if(input.at(0) == ' ') {
			input = input.substr(1);
		}
		base* c;
		if(input.at(0) == '>') {
                	if(input.at(1) == '>') {
                        	c = new Redirection();
                                if(input.at(2) == ' ') {
                                        input = input.substr(3);
                                }
                                else {
                                        input = input.substr(2);
                                }
                                c->setLeft(currentRoot);
                                currentRoot=c;
                         } else {
                                c = new Right();
                                if(input.at(1) == ' ') {
                                        input = input.substr(2);
                                }
                                else {
                                        input = input.substr(1);
                                }
                                c->setLeft(currentRoot);
                                currentRoot=c;
                         }
                } else if( input.at(0) == '<') {
			c = new Left();
			if(input.at(1) == ' ') {
				input = input.substr(2);
			} else {
				input = input.substr(1);
			}
			c->setLeft(currentRoot);
			//cout<<"is: "<<currentRoot->getName()<<endl;
			currentRoot=c;
		} else if(input.at(0) == '|') {
			c = new Pipe();
			if(input.at(1) == ' ') {
				input = input.substr(2);
			} else {
				input = input.substr(1);
			}
			c->setLeft(currentRoot);
			currentRoot=c;
		}
		
		//cout<<"finished round: "<<input<<endl;
		condition = input.find_first_of("&;|<>");
	}	
	}
	//cout<<"before finish: "<<currentRoot->command_left->getName()<<endl;
	//cout<<"before if: "<<input<<endl;
	condition = input.find_first_of("&;|<>)");	
	if(condition != string::npos) {
		char tester;
		tester = input.at(condition-1);
		if(tester == ' ') {
			b = new command(input.substr(0,condition-1));
			input=input.substr(condition);		
		} else {
			b = new command(input.substr(0,condition));
			input = input.substr(condition);
		}
	} else {
		b = new command(input);
		input.clear();
	}
	currentRoot->setRight(b);
	//cout<<b->getName()<<endl;
	return currentRoot;
}

base* parsing(string & input, int* count) {
	queue<base*> order;
	base* currentHead=nullptr;
	base* currentRoot=nullptr;
	base* b;
	int round = 0;
	while(!input.empty()) {
		while(input.at(0) == ' ') {
			input = input.substr(1);
		}
		if(input.at(0) == '#') {
			return new command("");
		}
		size_t comment = input.find("#");
		size_t first_quote = input.find("\"");
		if(comment < first_quote || first_quote == string::npos) { //errase comments
			if(comment != string::npos) {
				input = input.substr(0,comment);
			}
		}
		size_t a = input.find("&&");
		size_t o = input.find("||");
		size_t s = input.find(";");
		size_t l = input.find("<");
		size_t r = input.find(">");
		size_t p = input.find("|");
		size_t red = input.find(">>");
		size_t ep = input.find(")");
		if(a != string::npos || o != string::npos || s != string::npos || ep != string::npos
			|| l != string::npos || r != string::npos || p != string::npos || red != string::npos) {
			size_t first = input.find_first_of("&|;)<>");
		if(input.at(0) == '(') { //look for opening parentheses, then restart function without first parentheses
			int k = *count;
			k=k+1;
			*count = k;
                        Paren* p = new Paren(); 
                        input = input.substr(1);
			p->setWrap(parsing(input, count));
			if(currentRoot == nullptr) {
				currentRoot=p;  
			} else {
				currentRoot->setRight(p);
			}
                } else {
			if(input.at(first) == '<'||input.at(first) == '>'||(input.at(first) == '|'&&input.at(first+1) != '|')) {
				b = findChain(input);
				//cout<<"outside chain: "<<input<<endl;
				if(currentRoot == nullptr) {
					currentRoot=b;
				} else {
					currentRoot->setRight(b);
				}
			}
			else if(input.substr(0,first-1).compare("exit") == 0 || input.substr(0,first).compare("exit") == 0) {
				b = new Exit(); //exit command
				if(currentRoot == nullptr) {
					currentRoot=b;
					round++;
				} else {
					currentRoot->setRight(b);
				}
				input = input.substr(first);
			} else {
				char tester = input.at(first-1);
				size_t quote = input.find("\"");
				string possible = "";
				if(quote != string::npos && quote < first) { //looking for quotation marks
					possible = input.substr(0,quote+1);
					input = input.substr(quote+1);
					quote = input.find("\"");
					if(quote != string::npos) {
						possible = possible+input.substr(0,quote+1);
						input = input.substr(quote+1);
					}
					first = input.find_first_of("&|;)<>");
					
					possible.erase(possible.find("\""), 1);
					possible.erase(possible.find("\""), 1);
					if(!input.empty()) {
						if(first != 0) {
							tester = input.at(first-1);
							if(tester == ' ') {
                                        			b = new command(possible);
                                			} else {
                                        			b = new command(possible);
								
                                			}
						} else {
							b = new command(possible);
						}
					} else {
						b = new command(possible);
					}
					if(currentRoot == nullptr) {
						currentRoot=b;
						round++;
					} else {
						currentRoot->setRight(b);
					}	
				}
				else {
					if(tester == ' ') {
						string test_tester = "";
						test_tester = input.substr(0,first-1);
						if(test_tester.substr(0,4).compare("test") == 0) {
							test_tester = test_tester.substr(5);
							b = new test(test_tester);
						} else if (test_tester.at(0) == '[') {
							test_tester = test_tester.substr(1);
							if(test_tester.at(0) == ' ') {
								test_tester=test_tester.substr(1);
							}
							test_tester = test_tester.substr(0,test_tester.size()-1);
							if(test_tester.at(test_tester.size()-1) == ' ')
                                                                test_tester = test_tester.substr(0, test_tester.size()-1);
							b = new test(test_tester);
						} else {
							b = new command(test_tester);
						}
					} else {
						string test_tester = input.substr(0,first);
                                                if(test_tester.substr(0,4).compare("test") == 0) {
                                                        test_tester = test_tester.substr(5);
                                                        b = new test(test_tester);
                                                } else if (test_tester.at(0) == '[') {
                                                        test_tester = test_tester.substr(1);
                                                        if(test_tester.at(0) == ' ') {
                                                                test_tester=test_tester.substr(1);
                                                        }
                                                        test_tester = test_tester.substr(0,test_tester.size()-1);
                                                        if(test_tester.at(test_tester.size()-1) == ' ')
								test_tester = test_tester.substr(0, test_tester.size()-1);
                                                        b = new test(test_tester);
                                                } else {
							b = new command(test_tester);
						}
					}
					if(currentRoot == nullptr) {
						currentRoot=b;
						round++;
					} else {
						currentRoot->setRight(b);
					}
				}
				if(input.empty()) {
					return currentRoot;
				}
				input = input.substr(first);
			}//
		}//end of parentheses else
		if(input.empty()) {
			return currentRoot;
		}
		if(input.at(0) == ')') {
			int k = *count;
			k=k+1;
			*count = k;
			input = input.substr(1);
			//cout<<"returning paren 1"<<input<<endl;
			return currentRoot;
		} else if (input.at(0) == ' ') {
			input = input.substr(1);
			//cout<<"returning paren 2"<<endl;
			//return currentRoot;
		}
			
			//.now get connector
			base* c;
			if(input.at(0) == '&') {
				c = new And();
				if(input.at(2) == ' ') {
					input = input.substr(3);
				}
				else { 
					input = input.substr(2);
				}
				//cout<<"after and: "<<input<<endl;
				c->setLeft(currentRoot);//creating tree
				currentRoot=c;
			} else if(input.at(0) == '|') {
				if(input.at(1) == '|') {
					c = new Or();
					if(input.at(2) == ' ') {
						input = input.substr(3);
					}
					else { 
						input = input.substr(2);
					}
					c->setLeft(currentRoot);
					currentRoot=c;
				} else {
					c = new Pipe();
					if(input.at(1) == ' ') {
						input = input.substr(2);
					}
					else {
						input = input.substr(1);
					}
					c->setLeft(currentRoot);
					currentRoot=c;
				}
			} else if(input.at(0) == ';') {
				c = new semiColon();
				if(input.size() < 2) {
					input.clear();
				} else {
					if(input.at(1) == ' ') {
						input = input.substr(2);
					}
					else {
						input = input.substr(1);
					}
					
				}
				//cout<<"after semi: "<<input<<endl;
				c->setLeft(currentRoot);//creating tree
				currentRoot=c;
			} else if(input.at(0) == '<') {
				c = new Left();
                                if(input.at(1) == ' ') {
                                        input = input.substr(2);
                                }
                                else {
                                        input = input.substr(1);
                                }
                                c->setLeft(currentRoot);
                                currentRoot=c;
			} else if(input.at(0) == '>') {
				if(input.at(1) == '>') {
					c = new Redirection();
					if(input.at(2) == ' ') {
                                                input = input.substr(3);
                                        }
                                        else {  
                                                input = input.substr(2);
                                        }
                                        c->setLeft(currentRoot);
                                        currentRoot=c;
				} else {
					c = new Right();
                                        if(input.at(1) == ' ') {
                                                input = input.substr(2);
                                        }
                                        else {
                                                input = input.substr(1);
                                        }
                                        c->setLeft(currentRoot);
                                        currentRoot=c;
				}
			}
			if(!input.empty() && input.at(0) == ')') {
				int k = *count;
				k=k+1;
				*count = k;
				input = input.substr(1);
				return currentRoot;
			}
		} else {
			size_t first = input.find_first_of(")");
			if(input.substr(0,4).compare("exit") == 0) {
                                b = new Exit();
				if(currentRoot == nullptr) {
					currentRoot=b;
				} else {
					currentRoot->setRight(b);
				}
                        } else {
				string test_tester = "";
                                test_tester = input;
                                if(test_tester.substr(0,4).compare("test") == 0) {
                                        test_tester = test_tester.substr(5);
                                        b = new test(test_tester);
                                        //cout<<test_tester<<endl;
                                } else if (test_tester.at(0) == '[') {
                                        test_tester = test_tester.substr(1);
                                	if(test_tester.at(0) == ' ') {
                                        	test_tester=test_tester.substr(1);
                                        }
                                        test_tester = test_tester.substr(0,test_tester.size()-1);
					//cout<<test_tester<<endl;
					if(test_tester.at(test_tester.size()-1) == ' ')
						test_tester = test_tester.substr(0, test_tester.size()-1);
                                        //cout<<test_tester<<endl;
                                        b = new test(test_tester);
                                } else {
					if(test_tester.find("\"") != string::npos) {
						test_tester.erase(test_tester.find("\""), 1);
						test_tester.erase(test_tester.find("\""), 1);
					}
                                        b = new command(test_tester);
                                }
				if(currentRoot == nullptr) {
					currentRoot=b;
				} else {
					currentRoot->setRight(b);
				}
			}
			input.clear();
		} 
	}
	return currentRoot;
}
