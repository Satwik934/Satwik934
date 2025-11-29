package cs.toronto.edu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.sql.Date;
//final version
public class Main {

	//make function to print output upon starting the app - aka. the main menu
	public static void printMainMenu(){
		String appName = "Welcome to CSCC43 App";
		System.out.println(appName);
		System.out.println("----------------------");
		System.out.println();
		System.out.println("1. Register");
		System.out.println("2. Login");
		System.out.println("3. Quit");
		System.out.println();
		System.out.println("Please enter your selection (1-3)");
	}

	//make function to clear terminal screen
	public static void clearScreen(){
		System.out.print("\033[H\033[2J");
    	System.out.flush();
	}

	//make function to print home page
	public static void printHomeMenu(){
		String homeName = "Main Menu";
		System.out.println(homeName);
		System.out.println("---------");
		System.out.println();
		System.out.println("1. Portfolio Management");
		System.out.println("2. Stock List Management");
		System.out.println("3. Social Features");
		System.out.println("4. Transactions");
		System.out.println("5. Logout");
		System.out.println();
		System.out.println("Please enter your selection (1-5)");
	}

	//make function to print Portfolio Management Menu
	public static void printPortfolioManagementMenu(){
		String pageName = "Portfolio Management";
		System.out.println(pageName);
		System.out.println("--------------------");
		System.out.println();
		System.out.println("1. View My Portfolios");
		System.out.println("2. Create Portfolio");
		System.out.println("3. Delete Portfolio");
		System.out.println("4. Select a Portfolio");
		System.out.println("5. Back to Main Menu");
		System.out.println();
		System.out.println("Please enter your selection (1-5)");
	}

	//make function to print Portfolio Management Menu
	public static void printSelectPortfolioMenu(){
		String pageName = "Selected Portfolio Management";
		System.out.println(pageName);
		System.out.println("--------------------");
		System.out.println();
		System.out.println("1.  View Portfolio Summary");
		System.out.println("2.  Deposit Cash");
		System.out.println("3.  Withdraw Cash");
		System.out.println("4.  Buy Stock");
		System.out.println("5.  Sell Stock");
		System.out.println("6.  View Historical Prices");
		System.out.println("7.  View Future Price Predictions");
		System.out.println("8.  View Portfolio Statistics");
		System.out.println("9.  Add New Daily Stock Information");
		System.out.println("10. Go Back to Previous Page");
		System.out.println();
		System.out.println("Please enter your selection (1-10)");
	}
	// make function to print Stock List Management Menu
	public static void printStockListManagementMenu(){
		String pageName = "Stock List Management";
		System.out.println(pageName);
		System.out.println("---------------------");
		System.out.println();
		System.out.println("1. View All Accessible Stock Lists");
		System.out.println("2. Create Stock List");
		System.out.println("3. Edit My Stock Lists");
		System.out.println("4. Delete My Stock Lists");
		System.out.println("5. Share Stock List");
		System.out.println("6. Back to Main Menu");
		System.out.println();
		System.out.println("Please enter your selection (1-6)");
	}

// make function to print Selected Stock List Actions Menu
	public static void printSelectedStockListMenu(){
		String pageName = "Selected Stock List";
		System.out.println(pageName);
		System.out.println("---------------------");
		System.out.println();
		System.out.println("1. View List Contents");
		System.out.println("2. Edit List (add/remove stocks)");
		System.out.println("3. Delete This List");
		System.out.println("4. Make Public / Make Private");
		System.out.println("5. View Reviews");
		System.out.println("6. Write/Edit/Delete My Review");
		System.out.println("7. View Statistics");
		System.out.println("8. Go Back to Previous Page");
		System.out.println();
		System.out.println("Please enter your selection (1-8)");
	}

	public static void printFriendsandSocialFeaturesMenu(){
		String pageName = "Friends and Social Features";
		System.out.println(pageName);
		System.out.println("---------------------");
		System.out.println();
		System.out.println("1. View Friends");
		System.out.println("2. Delete Friend");
		System.out.println("3. View Incoming Friend Requests");
		System.out.println("4. View Outgoing Friend Requests");
		System.out.println("5. Send Friend Request");
		System.out.println("6. Accept / Reject Friend Requests");
		System.out.println("7. Back to Main Menu");
		System.out.println();
		System.out.println("Please enter your selection (1-7)");
	}


	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;
		int account_id = -1;
		long system_portid = -1;
		long system_cashaccid = -1;


		try {
			// 
			// Register the PostgreSQL driver
			//
			//
			Class.forName("org.postgresql.Driver");

			//
			// Connect to the database
			//
			//
			conn = DriverManager.getConnection("jdbc:postgresql://34.71.97.159/pgsample", "postgres", "Satwik@81");
			System.out.println("Opened database successfully");
			//Above was here before

			//Login + Register Menu
			while(true){
				clearScreen();
				System.out.println();
				System.out.println();
				printMainMenu();
				Scanner temp = new Scanner(System.in);
				String selectiontemp = temp.nextLine().trim();
								
				//check if user wants to cancel and go back
				//value is empty
				if(selectiontemp.isEmpty()){
					System.out.println();
					System.out.println("Invalid input. Loading...");
					//wait 2 seconds to simulate app loading
					try{
    					Thread.sleep(1200);
					} catch(InterruptedException e){
    					e.printStackTrace();
					}
					continue;
				}
				//number not valid
				int selection;
				try {
    				selection = Integer.parseInt(selectiontemp);
				} catch (NumberFormatException e) {
					System.out.println();
    				System.out.println("Invalid input. Loading...");
    				Thread.sleep(1200);
    				continue;
				}
				
				//check if the number entered is a valid option
				if(selection!=1 && selection!=2 && selection!=3){
					System.out.println();
					System.out.println("Invalid input. Loading...");
				
					//wait 2 seconds to simulate app loading
					try{
    					Thread.sleep(1200);
					} catch (InterruptedException e){
    					e.printStackTrace();
					}
					continue;
				}

				//user chose to exit
				if(selection == 3){
					temp.close();
					return;
				}
				//user chose to register
				if(selection == 1){
					boolean register = false;
					boolean goBack = false;
					while(!register){
						clearScreen();
						System.out.println();
						System.out.println();
						System.out.println("Registration");
						System.out.println("------------");
						System.out.println();
						System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
						System.out.println("********************************************************************");
						System.out.println();
						System.out.print("Enter your name: ");

						String name = temp.nextLine().trim();
						if(name.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(name.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						
						System.out.print("Enter your email: ");
						String email = temp.nextLine().trim();
						if(email.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(email.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						System.out.print("Enter your username: ");
						String username = temp.nextLine().trim();
						if(username.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(username.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						System.out.print("Enter your password: ");
						String password = temp.nextLine().trim();
						if(password.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(password.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						//now pass these values into sql to find if they match
						stmt = conn.createStatement();

						//check if username already exists
						String checkSql1 = "SELECT account_id FROM accounts WHERE username = ?";
						PreparedStatement checkPs1 = conn.prepareStatement(checkSql1);
						checkPs1.setString(1, username);
						ResultSet rs = checkPs1.executeQuery();

						if (rs.next()) {
    						System.out.println("Username already exists. Please choose another one. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1750);
							} catch (InterruptedException e){
    							e.printStackTrace();
							}
						}
						else{
							String insertSql = "INSERT INTO accounts (name1, email, password1, username) VALUES (?, ?, ?, ?)";
							PreparedStatement insertPs = conn.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS);
    						insertPs.setString(1, name);
    						insertPs.setString(2, email);
    						insertPs.setString(3, password);
    						insertPs.setString(4, username);
    						int c = insertPs.executeUpdate();
    						if (c > 0) {
								//get account_id
								ResultSet keys = insertPs.getGeneratedKeys();
    							if (keys.next()) {
        							account_id = keys.getInt(1);
    							}

								//create dummy cash_account_id and portfolio_id for adding new stock data
								String sql40 = "INSERT INTO cash_account (account_id, total_amount_of_cash) VALUES (?, 0) RETURNING cash_account_id";
								PreparedStatement ps40 = conn.prepareStatement(sql40);
								ps40.setLong(1, account_id);
								ResultSet rs40 = ps40.executeQuery();
	
								if(rs40.next()){
    								system_cashaccid = rs40.getLong("cash_account_id");
								}
								rs40.close();
								ps40.close();
								if (system_cashaccid == -1) {
    								System.out.println("Error: could not create system cash account. Exiting...");
    								return;
								}
								String sql41 = "INSERT INTO portfolios (account_id, name1) VALUES (?, 'SYSTEM_PORTFOLIO') RETURNING portfolio_id";
								PreparedStatement ps41 = conn.prepareStatement(sql41);
								ps41.setLong(1, account_id);
								ResultSet rs41 = ps41.executeQuery();
								if (rs41.next()) {
    								system_portid = rs41.getLong("portfolio_id");
								}
								rs41.close();
								ps41.close();

								if(system_portid == -1){
    								System.out.println("Error: could not create system portfolio. Exiting...");
    								return;
								}
								//
								String sql42 = "INSERT INTO contains (portfolio_id, cash_account_id, account_id) VALUES (?, ?, ?)";
								PreparedStatement ps42 = conn.prepareStatement(sql42);
								ps42.setLong(1, system_portid);
								ps42.setLong(2, system_cashaccid);
								ps42.setLong(3, account_id);
								ps42.executeUpdate();
								ps42.close();
        						System.out.println("Account created successfully. Loading...");

								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1200);
								} catch (InterruptedException e){
    								e.printStackTrace();
								}
								register = true;
    						}
							else{
								//error creating account even with valid inputs
								System.out.println("Error: could not create account. Exiting...");
								return;
							}
						}
					}
					if (goBack){
    					continue;
					}
				}
				//user chose to login
				if(selection == 2){
					boolean login = false;
					boolean goBack = false;

					while(!login){
						clearScreen();
						System.out.println();
						System.out.println();
						System.out.println("Login");
						System.out.println("-----");
						System.out.println();
						System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
						System.out.println("********************************************************************");
						System.out.println();
						System.out.print("Enter your username: ");
						String username = temp.nextLine().trim();
						if(username.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(username.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						System.out.print("Enter your password: ");
						String password = temp.nextLine().trim();
						if(password.equalsIgnoreCase("quit")){
							//go back to start page
							goBack = true;
							break;
						}
						//value is empty
						if(password.isEmpty()){
							System.out.println();
							System.out.println("Invalid input. Loading...");
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch(InterruptedException e){
    							e.printStackTrace();
							}
							continue;
						}
						//now pass these values into sql to find if they match
						stmt = conn.createStatement();

						String sqls = "SELECT account_id FROM accounts WHERE username = ? AND password1 = ?";
						PreparedStatement ps = conn.prepareStatement(sqls);
						ps.setString(1, username);
						ps.setString(2, password);

						ResultSet rs = ps.executeQuery();

						//check if a row exists - i.e. the credentials are correct
						if (rs.next()){
							//login successful
							clearScreen();
							System.out.println();
    						System.out.println("Login successful! Loading...");
							account_id = rs.getInt("account_id");

							//store system portfolio id
							String sql42 = "SELECT portfolio_id FROM portfolios WHERE account_id = ? AND name1 = 'SYSTEM_PORTFOLIO'";
							PreparedStatement ps42 = conn.prepareStatement(sql42);
							ps42.setLong(1, account_id);
							ResultSet rs42 = ps42.executeQuery();
							if(rs42.next()){
    							system_portid = rs42.getLong("portfolio_id");
							}
							rs42.close();
							ps42.close();

							//store system cash account id
							String sql43 = "SELECT ca.cash_account_id FROM contains c JOIN cash_account ca ON c.cash_account_id = ca.cash_account_id WHERE c.account_id = ? AND c.portfolio_id = ?";
							PreparedStatement ps43 = conn.prepareStatement(sql43);
							ps43.setLong(1, account_id);
							ps43.setLong(2, system_portid);
							ResultSet rs43 = ps43.executeQuery();
							if(rs43.next()){
    							system_cashaccid = rs43.getLong("cash_account_id");
							}
							rs43.close();
							ps43.close();
							login = true;
							rs.close();
							ps.close();
						}
						else{
							clearScreen();
							System.out.println("");
    						System.out.println("Invalid username or password. Loading...");
							
							//wait 2 seconds to simulate app loading
							try{
    							Thread.sleep(1200);
							} catch (InterruptedException e){
    							e.printStackTrace();
							}
						}
					}

					if (goBack){
    					continue;
					}

					//wait 2 seconds to simulate app loading
					try{
    					Thread.sleep(500);
					} catch (InterruptedException e){
    					e.printStackTrace();
					}

					//break out of login/register loop
				}

				//Enter Main menu
				boolean stayInMainMenu = true;
				boolean goBackToStartPage = false;
				while(stayInMainMenu){
					clearScreen();
					System.out.println();
					System.out.println();
					printHomeMenu();

					//check if user entered a number
					String homeselectiontemp = temp.nextLine().trim();
								
					//check if user wants to cancel and go back
					//value is empty
					if(homeselectiontemp.isEmpty()){
						System.out.println();
						System.out.println("Invalid input. Loading...");
						//wait 2 seconds to simulate app loading
						try{
    						Thread.sleep(1200);
						} catch(InterruptedException e){
    						e.printStackTrace();
						}
						continue;
					}
					//number not valid
					int homeSelection;
					try {
    					homeSelection = Integer.parseInt(homeselectiontemp);
					} catch (NumberFormatException e) {
						System.out.println();
    					System.out.println("Invalid input. Loading...");
    					Thread.sleep(1200);
    					continue;
					}
					//check if the number entered is a valid option
					if(homeSelection!=1 && homeSelection!=2 && homeSelection!=3 && homeSelection!=4 && homeSelection!=5){
						System.out.println("Invalid input. Loading...");
						
						//wait 2 seconds to simulate app loading
						try{
    						Thread.sleep(1200);
						} catch (InterruptedException e){
    						e.printStackTrace();
						}
						continue;
					}

					//user wants to logout
					if(homeSelection == 5){
						account_id = -1;
						clearScreen();
						goBackToStartPage = true;
						break;
					}

					//user chooses Portfolio Management
					if(homeSelection == 1){
						boolean stayInPortfolio = true;
						boolean backToHomeMenu1 = false;
						while(stayInPortfolio){
							clearScreen();
							System.out.println();
							System.out.println();
							printPortfolioManagementMenu();
						
							//check if user entered a number
							String s2temp = temp.nextLine().trim();
								
							//check if user wants to cancel and go back
							//value is empty
							if(s2temp.isEmpty()){
								System.out.println();
								System.out.println("Invalid input. Loading...");
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1200);
								} catch(InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							//number not valid
							int s2;
							try {
    							s2 = Integer.parseInt(s2temp);
							} catch (NumberFormatException e) {
								System.out.println();
    							System.out.println("Invalid input. Loading...");
    							Thread.sleep(1200);
    							continue;
							}
							//check if the number entered is a valid option
							if(s2!=1 && s2!=2 && s2!=3 && s2!=4 && s2!=5){
								System.out.println("Invalid input. Loading...");
				
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1000);
								} catch (InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							//user wants to go back to home menu
							if(s2 == 5){
								stayInPortfolio = false;
								backToHomeMenu1 = true;
							}
							//user wants to view their portfolios
							if(s2==1){
								
								try {
        						String sql1 = "SELECT portfolio_id, name1 FROM portfolios WHERE account_id = ?";
        						PreparedStatement ps1 = conn.prepareStatement(sql1);
        						ps1.setInt(1, account_id);
        						ResultSet rs = ps1.executeQuery();
								clearScreen();
								System.out.println();
								System.out.println();
        						System.out.println("Your Portfolios:");
        						System.out.println("----------------");
        						boolean hasAnyP = false;
								System.out.println();
								int count1 = 0;
        						while (rs.next()){
            						hasAnyP = true;
									count1++;
            						long portid = rs.getLong("portfolio_id");
            						String pname = rs.getString("name1");

									//don't show system portfolio
									if(pname.equals("SYSTEM_PORTFOLIO")){
										continue;
									}
            						System.out.println("ID: " + portid + " | Name: " + pname);
        						}
        						if (!hasAnyP) {
            						System.out.println("You have no portfolios.");
        						}
								if(count1<=1){
									System.out.println("You have no portfolios.");
								}
        						rs.close();
        						ps1.close();
    							} catch (SQLException e){
        							System.out.println("Error loading portfolios.");
        							e.printStackTrace();
    							}
    							System.out.println();
    							System.out.print("Press Enter to return Portfolio Management...");
								System.out.println();
    							temp.nextLine();

								//goes back to Portfolio Management page
    							continue;
							
							}
							//user wants to create a portfolio
							if(s2==2){
								//temp.nextLine();
								while(true){
									clearScreen();
									System.out.println();
									System.out.println();
									System.out.println("Create Portfolio");
									System.out.println("----------------");
									System.out.println();
									System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
									System.out.println("********************************************************************");
									System.out.println();
									System.out.print("Enter a name for your portfolio (this cannot be changed after): ");
									String pname = temp.nextLine().trim();
								
									//check if user wants to cancel and go back
									if(pname.equalsIgnoreCase("quit")){
										break;
									}
									//name is empty
									if(pname.isEmpty()){
										System.out.println("Please choose a name for the portfolio.");
										//
										//wait 2 seconds to simulate app loading
										try{
    										Thread.sleep(1000);
										} catch (InterruptedException e){
    										e.printStackTrace();
										}
										continue;
									}
									//name is empty
									if(pname.equals("SYSTEM_PORTFOLIO")){
										System.out.println("Please choose another name for the portfolio.");
										//
										//wait 2 seconds to simulate app loading
										try{
    										Thread.sleep(1000);
										} catch (InterruptedException e){
    										e.printStackTrace();
										}
										continue;
									}
									//otherwise continue with creating a portfolio
									String sql3 = "INSERT INTO portfolios (account_id, name1) VALUES (?, ?) RETURNING portfolio_id";
        							PreparedStatement ps2 = conn.prepareStatement(sql3);
        							ps2.setLong(1, account_id);
        							ps2.setString(2, pname);
									ResultSet rs = ps2.executeQuery();
									long newpId = -1;
									if (rs.next()){
    									newpId = rs.getLong("portfolio_id");
										System.out.println();
    									System.out.println("Portfolio created successfully.");
    									System.out.println("Portfolio ID: " + newpId);
									} 
									else{
										System.out.println();
    									System.out.println("Portfolio created but ID could not be retrieved.");
									}
        							ps2.close();
									
									String sqlCA1 = "INSERT INTO cash_account (account_id, total_amount_of_cash) VALUES (?, 0) RETURNING cash_account_id";
									PreparedStatement psCA1 = conn.prepareStatement(sqlCA1);
									psCA1.setLong(1, account_id);
									ResultSet rsCA = psCA1.executeQuery();
									long newCashId1 = -1;
									if(rsCA.next()){
										newCashId1 = rsCA.getLong(1);
									}
									psCA1.close();
									if(newpId == -1 || newCashId1 == -1){
    									System.out.println("Error creating portfolio or cash account. Try again. Loading...");
    									try { 
											Thread.sleep(1200); 
										}catch (InterruptedException ie) { 
											ie.printStackTrace(); }
    									continue;
									}
									String sqlC1 = "INSERT INTO contains (portfolio_id, cash_account_id, account_id) VALUES (?, ?, ?)";
									PreparedStatement psC1 = conn.prepareStatement(sqlC1);
									psC1.setLong(1, newpId);
									psC1.setLong(2, newCashId1);
									psC1.setLong(3, account_id);
									psC1.executeUpdate();
									psC1.close();
									System.out.println();
									System.out.print("Press Enter to return Portfolio Management...");
									System.out.println();
    								temp.nextLine();

									//goes back to Portfolio Management page
    								break;
								}
								continue;
							}
							//user wants to delete a portfolio
							if(s2==3){
								while(true){
									clearScreen();
									System.out.println();
									System.out.println();
									System.out.println("Delete Portfolio");
									System.out.println("----------------");
									System.out.println();
									System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
									System.out.println("********************************************************************");
									System.out.println();
									//print the users portfolio ids
									
									String sql4 = "SELECT portfolio_id, name1 FROM portfolios WHERE account_id = ?";
									PreparedStatement ps4 = conn.prepareStatement(sql4);
									ps4.setLong(1, account_id);
									ResultSet rs4 = ps4.executeQuery();
									boolean hasAny3 = false;
									int count = 0;
									while(rs4.next()){
    									hasAny3 = true;
										count++;
    									long pid = rs4.getLong("portfolio_id");
    									String pname = rs4.getString("name1");
										//dont show system portfolio
										if(pname.equals("SYSTEM_PORTFOLIO")){
											continue;
										}
    									System.out.println("ID: " + pid + "  |  Name: " + pname);
									}

									if(!hasAny3){
    									System.out.println("You do not have any portfolios yet.");
										System.out.println();
    									System.out.print("Press Enter to return Portfolio Management...");
										System.out.println();
    									temp.nextLine();
										//goes back to Portfolio Management page
    									continue;
									}
									if(count<=1){
										System.out.println("You do not have any portfolios yet.");
										System.out.println();
										System.out.println("Press Enter to go back...");
										temp.nextLine();
										//goes back to Portfolio Management page
    									break;
									}
									rs4.close();
									ps4.close();
									
									System.out.println();
									System.out.print("Enter the portfolio id (listed above) that you want to delete: ");
									String pname4 = temp.nextLine().trim();
								
									//check if user wants to cancel and go back
									if(pname4.equalsIgnoreCase("quit")){
										break;
									}
									//name is empty
									if(pname4.isEmpty()){
										System.out.println();
										System.out.println("Please enter a valid portfolio id.");
										//wait 2 seconds to simulate app loading
										try{
    										Thread.sleep(1000);
										} catch (InterruptedException e){
    										e.printStackTrace();
										}
										continue;
									}
									//otherwise continue with deleting a portfolio
									long portid6;
									
									try{
    									portid6 = Long.parseLong(pname4);
									}catch(NumberFormatException e) {
										System.out.println();
    									System.out.println("Invalid portfolio ID.");
    									Thread.sleep(1200);
    									//break;
										continue;
									}
									//get portfolio name for portid6
									String sql = "SELECT name1 FROM portfolios WHERE account_id = ? AND portfolio_id = ?";
									PreparedStatement ps = conn.prepareStatement(sql);
									ps.setLong(1, account_id);
									ps.setLong(2, portid6);

									ResultSet rs = ps.executeQuery();
									String portfolioNametemp = null;

									if(rs.next()){
    									portfolioNametemp = rs.getString("name1");
									}
									rs.close();
									ps.close();
									if(portfolioNametemp.equals("SYSTEM_PORTFOLIO")){
										System.out.println();
    									System.out.println("Invalid portfolio ID.");
    									Thread.sleep(1200);
    									//break;
										continue;
									}
									PreparedStatement d1 = conn.prepareStatement("DELETE FROM contains WHERE portfolio_id = ?");
        							d1.setLong(1, portid6);
        							d1.executeUpdate();
        							d1.close();
        							PreparedStatement d2 = conn.prepareStatement("DELETE FROM portfolio_holdings WHERE portfolio_id = ?");
        							d2.setLong(1, portid6);
        							d2.executeUpdate();
        							d2.close();
        							PreparedStatement d3 = conn.prepareStatement("DELETE FROM records WHERE portfolio_id = ?");
        							d3.setLong(1, portid6);
        							d3.executeUpdate();
        							d3.close();
									String sql6 = "DELETE FROM portfolios WHERE account_id = ? AND portfolio_id = ?";
									PreparedStatement ps6 = conn.prepareStatement(sql6);
									ps6.setLong(1, account_id);
									ps6.setLong(2, portid6);

									int c6 = ps6.executeUpdate();

									if(c6 > 0){
										System.out.println();
    									System.out.println("Portfolio deleted successfully.");
									} 
									else{
										System.out.println();
    									System.out.println("No portfolio found with that ID.");
									}
									ps6.close();
									System.out.println();
									System.out.println("Press Enter to go back...");
									temp.nextLine();
									//goes back to Portfolio Management page
    								break;
								}
								continue;
							}
							//user wants to select a portfolio
							if(s2==4){
								//first list all portfolios
								while(true){
									clearScreen();
									System.out.println();
									System.out.println();
									System.out.println("Choose a Portfolio");
									System.out.println("------------------");
									System.out.println();
									System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
									System.out.println("********************************************************************");
									System.out.println();
									//print the users portfolio ids
									
									String sql4 = "SELECT portfolio_id, name1 FROM portfolios WHERE account_id = ?";
									PreparedStatement ps4 = conn.prepareStatement(sql4);
									ps4.setLong(1, account_id);
									ResultSet rs4 = ps4.executeQuery();
									boolean hasAny3 = false;
									int count2 = 0;
									while(rs4.next()){
    									hasAny3 = true;
										count2++;
    									long pid = rs4.getLong("portfolio_id");
    									String pname = rs4.getString("name1");

										//dont show system portfolio
										if(pname.equals("SYSTEM_PORTFOLIO")){
											continue;
										}
    									System.out.println("ID: " + pid + "  |  Name: " + pname);
									}

									if(!hasAny3){
    									System.out.println("You do not have any portfolios yet.");
										System.out.println();
										System.out.println("Press Enter to go back...");
										temp.nextLine();
										//goes back to Portfolio Management page
    									break;
									}
									if(count2<=1){
										System.out.println("You do not have any portfolios yet.");
										System.out.println();
										System.out.println("Press Enter to go back...");
										temp.nextLine();
										//goes back to Portfolio Management page
    									break;
									}
									rs4.close();
									ps4.close();
									
									System.out.println();
									System.out.print("Enter the portfolio id (listed above) that you wish to further select: ");
									String pname4 = temp.nextLine().trim();
								
									//check if user wants to cancel and go back
									if(pname4.equalsIgnoreCase("quit")){
										break;
									}
									//name is empty
									if(pname4.isEmpty()){
										System.out.println();
										System.out.println("Please enter a valid portfolio id.");
										//wait 2 seconds to simulate app loading
										try{
    										Thread.sleep(1000);
										} catch (InterruptedException e){
    										e.printStackTrace();
										}
										continue;
									}
									//check if the user chose a valid portfolio id from the list above
									//otherwise continue with selecting a portfolio
									long portid6;
									
									try{
    									portid6 = Long.parseLong(pname4);
									}catch(NumberFormatException e) {
										System.out.println();
    									System.out.println("Please enter a valid portfolio ID.");
    									Thread.sleep(1200);
    									continue;
									}
									String checkSql12 = "SELECT name1 FROM portfolios WHERE account_id = ? AND portfolio_id = ?";
									PreparedStatement cPs = conn.prepareStatement(checkSql12);
									cPs.setLong(1, account_id);
									cPs.setLong(2, portid6);
									ResultSet cRs = cPs.executeQuery();
									if(!cRs.next()) {
    									System.out.println();
    									System.out.println("Please enter a valid portfolio ID.");
    									Thread.sleep(1200);
    									cRs.close();
    									cPs.close();
    									continue;
									}
									//ensure user doesnt accidentally enter system portfolio id
									String tempn = cRs.getString("name1");
									if(tempn.equals("SYSTEM_PORTFOLIO")){
										System.out.println();
    									System.out.println("Please enter a valid portfolio ID.");
    									Thread.sleep(1200);
    									cRs.close();
    									cPs.close();
    									continue;
									}
									cRs.close();
									cPs.close();
									//go to inner loop for the selected portfolio
									while(true){
										clearScreen();
										System.out.println();
										System.out.println();
										System.out.println("Currently Selected Portfolio: id " + portid6);
										System.out.println("*************************************");
										System.out.println();
										printSelectPortfolioMenu();
										//get user input
										//check if user entered a number
										String s7line = temp.nextLine().trim();
										
										//check if the user just pressed enter
										if(s7line.isEmpty()){
    										System.out.println("Invalid input. Loading...");
    										try { 
												Thread.sleep(1200); 
											}catch (InterruptedException e) { e.printStackTrace(); }
    										continue;
										}
										int s7;
										try{
    										s7 = Integer.parseInt(s7line);
										}catch (NumberFormatException e) {
    										System.out.println("Invalid input. Loading...");
    										//wait 1 second to simulate app loading
    										try { 
												Thread.sleep(1200); 
											}catch(InterruptedException ie) { ie.printStackTrace(); }
    										continue;
										}
						
										//check if the number entered is a valid option
										if(s7!=1 && s7!=2 && s7!=3 && s7!=4 && s7!=5 && s7!=6 && s7!=7 && s7!=8 && s7!=9 && s7!=10){
											System.out.println("Invalid input. Loading...");
				
											//wait 2 seconds to simulate app loading
											try{
    											Thread.sleep(1200);
											} catch (InterruptedException e){
    											e.printStackTrace();
											}
											continue;
										}
										//user wants to go back to home menu
										if(s7 == 10){
											break;
										}
										//user wants to view portfolio summary
										if(s7==1){
											clearScreen();
											System.out.println();
											System.out.println();
											System.out.println("Currently Selected Portfolio: id " + portid6);
											System.out.println("*************************************");
											System.out.println();
											System.out.println("View Portfolio Summary");
											System.out.println("----------------------");
											System.out.println();

											//show total cash
											String sqlCash9 = "SELECT cat.total_amount_of_cash FROM contains t5 JOIN cash_account cat ON cat.cash_account_id = t5.cash_account_id WHERE t5.portfolio_id = ? AND t5.account_id = ?";

											PreparedStatement ps9 = conn.prepareStatement(sqlCash9);
											ps9.setLong(1, portid6);
											ps9.setLong(2, account_id);
											ResultSet rs9 = ps9.executeQuery();

											double totalCashAmount = 0.0;
											if (rs9.next()) {
    											totalCashAmount = rs9.getDouble("total_amount_of_cash");
											}
											ps9.close();
											rs9.close();
											
											//show all stock holdings + market values + total portfolio market value
											String sql10 = "SELECT symbol, name1, number_of_shares FROM portfolio_holdings WHERE portfolio_id = ? AND account_id = ?";
    										PreparedStatement ps10 = conn.prepareStatement(sql10);
    										ps10.setLong(1, portid6);
    										ps10.setLong(2, account_id);
    										ResultSet rs10 = ps10.executeQuery();					
											System.out.println("Total Cash: $" + totalCashAmount);
											System.out.println("-----------");
    										System.out.println();
    										System.out.println("Stock Holdings:");
											System.out.println("---------------");
											System.out.println();
											System.out.println("Symbol  |  Name  |   Shares  |   Price  |  Market Value");
    										System.out.println("-------------------------------------------------------");
											System.out.println();
											
											double totalSv = 0;

    										while (rs10.next()) {

        										String symbol = rs10.getString("symbol");
        										double shares = rs10.getDouble("number_of_shares");
												String sname1 = rs10.getString("name1");
        										double latestPrice1 = 0.0;
        										String sqlpri1 = "SELECT close1 FROM SP500History WHERE code = ? AND date1 = (SELECT MAX(date1) FROM SP500History WHERE code = ?)";
        										PreparedStatement psPrice1 = conn.prepareStatement(sqlpri1);
        										psPrice1.setString(1, symbol);
												psPrice1.setString(2, symbol);
        										ResultSet rsPrice1 = psPrice1.executeQuery();
        										if (rsPrice1.next()) {
            										latestPrice1 = rsPrice1.getDouble("close1");
        										}
        										rsPrice1.close();
        										psPrice1.close();
        										double marketV = shares * latestPrice1;
        										totalSv += marketV;
        										System.out.printf("%s | %s | %.2f | %.2f | %.2f\n", symbol, sname1, shares, latestPrice1, marketV);
    										}
    										rs10.close();
    										ps10.close();
											System.out.println("-------------------------------------------------------");
											System.out.println();
    										double totalPortfolioValue = totalCashAmount + totalSv;
    										System.out.println();
    										System.out.println("Total Stock Value: $" + totalSv);
    										System.out.println("Total Portfolio Value: $" + totalPortfolioValue);
										
											//go back once the user presses enter
											System.out.println();
											System.out.println("Press Enter to go back...");
											temp.nextLine();

											//goes back to Portfolio Management page
    										continue;
										}

										//user wants to deposit cash
										if(s7==2){
											//code
											while(true){
												//otherwise continue with depositing the cash to portid6
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Deposit Cash");
												System.out.println("-------------");
												System.out.println();
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.print("Please enter the amount you wish to deposit: ");
										
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid amount.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1000);
													} catch (InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}
												//check if value is non-negative and valid
												boolean isp = false;
												try {
    												double v1 = Double.parseDouble(pname9);
    												if (v1 >= 0) {
        												isp = true;
    												}
												} catch (NumberFormatException e) {
    												isp = false;
												}
												if(!isp){
    												System.out.println("Please enter a valid amount. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch (InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}
												double val1 = Double.parseDouble(pname9);

												//need to get cash account id for the current portfolio
												String sqlgc =  "SELECT ba.cash_account_id, ba.total_amount_of_cash FROM contains dt JOIN cash_account ba ON ba.cash_account_id = dt.cash_account_id WHERE dt.portfolio_id = ? AND dt.account_id = ?";
												PreparedStatement psG = conn.prepareStatement(sqlgc);
												psG.setLong(1, portid6);
												psG.setLong(2, account_id);
												ResultSet rs14 = psG.executeQuery();
												if(!rs14.next()){
    												System.out.println("Error: unable to find cash account for this portfolio.");
    												Thread.sleep(1200);
    												continue;
												}
												long cashAccId = rs14.getLong("cash_account_id");
												double currentC1 = rs14.getDouble("total_amount_of_cash");
												rs14.close();
												psG.close();

												//do the deposit in sql
												String sqlDep1 = "UPDATE cash_account SET total_amount_of_cash = total_amount_of_cash + ? WHERE cash_account_id = ?";
    											PreparedStatement ps19 = conn.prepareStatement(sqlDep1);
    											ps19.setDouble(1, val1);
    											ps19.setLong(2, cashAccId);
    											ps19.executeUpdate();
    											ps19.close();

												//create the trasnaction record
												String sqlT4 = "INSERT INTO transaction (transaction_type, amount) VALUES ('deposit', ?) RETURNING transaction_id";
    											PreparedStatement psT4 = conn.prepareStatement(sqlT4);
    											psT4.setDouble(1, val1);
    											ResultSet rsT4 = psT4.executeQuery();
    											long td4 = -1;
    											if(rsT4.next()){
        											td4 = rsT4.getLong("transaction_id");
    											}
    											rsT4.close();
    											psT4.close();
    											if(td4 == -1){
        											System.out.println("Error: Could not record transaction. Loading...");
        											Thread.sleep(1200);
        											continue;
    											}

												//insert into the records tabel
												String sql19 = "INSERT INTO records (transaction_id, cash_account_id, portfolio_id, account_id) VALUES (?, ?, ?, ?)";
    											PreparedStatement ps20 = conn.prepareStatement(sql19);
    											ps20.setLong(1, td4);
    											ps20.setLong(2, cashAccId);
    											ps20.setLong(3, portid6);
    											ps20.setLong(4, account_id);
    											ps20.executeUpdate();
    											ps20.close();

												//notify user of success
												System.out.println();
    											System.out.println("Successfully deposited $" + val1 + " into portfolio ID " + portid6 + ".");
    											System.out.println("New balance: $" + (currentC1 + val1));
    											System.out.println();
    											System.out.println("Press Enter to go back...");
    											temp.nextLine();
    											break;
											}
										}

										//user wants to withdraw cash
										if(s7==3){
											while(true){
												//otherwise continue with withdrawing the cash from portid6
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Withdraw Cash");
												System.out.println("-------------");
												System.out.println();
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.print("Please enter the amount you wish to withdraw: ");
										
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid amount.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch (InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}
												//check if value is non-negative and valid
												boolean isp = false;
												try {
    												double v1 = Double.parseDouble(pname9);
    												if (v1 >= 0) {
        												isp = true;
    												}
												} catch (NumberFormatException e) {
    												isp = false;
												}
												if(!isp){
    												System.out.println("Please enter a valid amount. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch (InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}
												double val1 = Double.parseDouble(pname9);

												//need to get cash account id for the current portfolio
												String sqlgc =  "SELECT csa.cash_account_id, csa.total_amount_of_cash FROM contains cr JOIN cash_account csa ON csa.cash_account_id = cr.cash_account_id WHERE cr.portfolio_id = ? AND cr.account_id = ?";
												PreparedStatement psG = conn.prepareStatement(sqlgc);
												psG.setLong(1, portid6);
												psG.setLong(2, account_id);
												ResultSet rs14 = psG.executeQuery();
												if(!rs14.next()){
    												System.out.println("Error: unable to find cash account for this portfolio.");
    												Thread.sleep(1200);
    												continue;
												}
												long cashAccId = rs14.getLong("cash_account_id");
												double currentC1 = rs14.getDouble("total_amount_of_cash");
												rs14.close();
												psG.close();

												//check if there is enough cash to withdraw
												if(val1 > currentC1){
    												System.out.println();
    												System.out.println("Insufficient funds. Current balance: $" + currentC1);
    												System.out.println("Please enter a valid amount. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												
												//now withdraw the cash
												String sqlWD = "UPDATE cash_account SET total_amount_of_cash = total_amount_of_cash - ? WHERE cash_account_id = ?";
												PreparedStatement ps16 = conn.prepareStatement(sqlWD);
												ps16.setDouble(1, val1);
												ps16.setLong(2, cashAccId);
												ps16.executeUpdate();
												ps16.close();

												//record transaction
												String sqlT1 = "INSERT INTO transaction (transaction_type, amount) VALUES ('withdraw', ?) RETURNING transaction_id";
												PreparedStatement psT1 = conn.prepareStatement(sqlT1);
												psT1.setDouble(1, val1);
												ResultSet rsT1 = psT1.executeQuery();
												long td1 = -1;
												if(rsT1.next()){
    												td1 = rsT1.getLong("transaction_id");
												}
												rsT1.close();
												psT1.close();
												if (td1 == -1) {
    												System.out.println("Error: Could not record transaction. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												String sqlR1 = "INSERT INTO records (transaction_id, cash_account_id, portfolio_id, account_id) VALUES (?, ?, ?, ?)";
												PreparedStatement psR1 = conn.prepareStatement(sqlR1);
												psR1.setLong(1, td1);
												psR1.setLong(2, cashAccId);
												psR1.setLong(3, portid6);
												psR1.setLong(4, account_id);
												psR1.executeUpdate();
												psR1.close();

												//wait for user to go back to current page
												System.out.println();
												System.out.println("Successfully withdrew $" + val1 + " from portfolio ID " + portid6 + ".");
												System.out.println("New balance: $" + (currentC1 - val1));
												System.out.println();
												System.out.println("Press Enter to go back...");
												temp.nextLine();
    											break;
											}
										}

										//user wants to buy stock
										if(s7==4){
											//code
											while (true) {
        									clearScreen();
        									System.out.println();
        									System.out.println();
        									System.out.println("Currently Selected Portfolio: id " + portid6);
        									System.out.println("*************************************");
        									System.out.println();
        									System.out.println("Buy Stock");
        									System.out.println("---------");
        									System.out.println();
        									System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");

        									//get stock symbol
        									System.out.print("Enter stock symbol: ");
        									String symbol = temp.nextLine().trim();
        									if(symbol.equalsIgnoreCase("quit")){
												break;
											}
        									if(symbol.isEmpty()){
            									System.out.println("Please enter a valid stock symbol. Loading...");
            									Thread.sleep(1200);
            									continue;
        									}

        									//get number of shares
        									System.out.print("Enter number of shares to buy: ");
        									String shareStr1 = temp.nextLine().trim();
        									if(shareStr1.equalsIgnoreCase("quit")){
												break;
											}
        									if(shareStr1.isEmpty()){
            									System.out.println("Please enter a valid amount. Loading...");
            									Thread.sleep(1200);
            									continue;
        									}
        									boolean validN1 = true;
        									double shares = 0.0;
        									try {
            									shares = Double.parseDouble(shareStr1);
            									if (shares <= 0) validN1 = false;
        									}catch(Exception e){ 
												validN1 = false; 
											}
        									if (!validN1) {
            									System.out.println("Please enter a valid number. Loading...");
            									Thread.sleep(1200);
            									continue;
        									}

        									//get latest close price for symbol
        									String sql22 = "SELECT close1 FROM sp500History WHERE code = ? AND date1 = ( SELECT MAX(date1) FROM sp500History WHERE code = ? )";
        									PreparedStatement ps22 = conn.prepareStatement(sql22);
											ps22.setString(1, symbol);
											ps22.setString(2, symbol);
        									ResultSet rs22 = ps22.executeQuery();
        									if(!rs22.next()){
            									System.out.println("Error: could not find stock price for symbol. Loading...");
            									Thread.sleep(1200);
            									rs22.close();
            									ps22.close();
            									continue;
        									}

        									double price1 = rs22.getDouble("close1");
        									rs22.close();
        									ps22.close();
        									double cst1 = price1 * shares;

        									//get cash account for this portfolio
        									String sql23 = "SELECT fa.cash_account_id, fa.total_amount_of_cash FROM contains f JOIN cash_account fa ON fa.cash_account_id = f.cash_account_id WHERE f.portfolio_id = ? AND f.account_id = ?";
        									PreparedStatement ps23 = conn.prepareStatement(sql23);
        									ps23.setLong(1, portid6);
        									ps23.setLong(2, account_id);
        									ResultSet rs23 = ps23.executeQuery();
        									if(!rs23.next()){
            									System.out.println("Error: cannot find cash account for this portfolio.");
            									Thread.sleep(1200);
            									continue;
        									}
        									long cashAId5 = rs23.getLong("cash_account_id");
        									double cashB5 = rs23.getDouble("total_amount_of_cash");
        									rs23.close();
        									ps23.close();
        									if(cst1 >cashB5){
            									System.out.println();
            									System.out.println("Insufficient cash. Current balance: $" + cashB5);
            									System.out.println("Total cost required: $" + cst1);
            									Thread.sleep(1200);
            									continue;
        									}

        									//deduct cost from cash account
        									String sql24 = "UPDATE cash_account SET total_amount_of_cash = total_amount_of_cash - ? WHERE cash_account_id = ?";
        									PreparedStatement ps24 = conn.prepareStatement(sql24);
        									ps24.setDouble(1, cst1);
        									ps24.setLong(2, cashAId5);
        									ps24.executeUpdate();
        									ps24.close();
											String sql25 = "INSERT INTO stockinfo(symbol, name1) VALUES (?, ?) ON CONFLICT (symbol) DO NOTHING";
											PreparedStatement ps25 = conn.prepareStatement(sql25);
											ps25.setString(1, symbol);
											ps25.setString(2, symbol);
											ps25.executeUpdate();
											ps25.close();
											
        									//update holdings
        									//update holdings (insert new row or add to existing shares)
											String sql26 = "INSERT INTO portfolio_holdings (portfolio_id, account_id, symbol, name1, number_of_shares) VALUES (?, ?, ?, ?, ?) ON CONFLICT (portfolio_id, account_id, symbol, name1) DO UPDATE SET number_of_shares = portfolio_holdings.number_of_shares + EXCLUDED.number_of_shares";

											PreparedStatement ps26 = conn.prepareStatement(sql26);
											ps26.setLong(1, portid6);
											ps26.setLong(2, account_id);
											ps26.setString(3, symbol);
											ps26.setString(4, symbol);
											ps26.setDouble(5, shares);
											ps26.executeUpdate();
											ps26.close();


       									 	//record transaction
               								String sql27 = "INSERT INTO transaction (transaction_type, amount) VALUES ('buy', ?) RETURNING transaction_id";
       							        	PreparedStatement ps27 = conn.prepareStatement(sql27);
             		                    	ps27.setDouble(1, cst1);
        									ResultSet rs27 = ps27.executeQuery();
        									long td6 = -1;
        									if(rs27.next()){
												td6 = rs27.getLong("transaction_id");
											}
        									rs27.close();
        									ps27.close();
        									if(td6 == -1){
            									System.out.println("Error: could not record transaction. Loading...");
            									Thread.sleep(1200);
            									continue;
        									}

        									String sql28 = "INSERT INTO records (transaction_id, cash_account_id, portfolio_id, account_id) VALUES (?, ?, ?, ?)";
        									PreparedStatement ps28 = conn.prepareStatement(sql28);
        									ps28.setLong(1, td6);
        									ps28.setLong(2, cashAId5);
        									ps28.setLong(3, portid6);
        									ps28.setLong(4, account_id);
        									ps28.executeUpdate();
        									ps28.close();

        									//notify user of success
        									System.out.println();
        									System.out.println("Successfully bought " + shares + " shares of " + symbol + ".");
        									System.out.println("Total cost: $" + cst1);
        									System.out.println("Remaining cash: $" + (cashB5 - cst1));
        									System.out.println();

											//wait for user to go back
        									System.out.println("Press Enter to go back...");
        									temp.nextLine();
        									break;
    										}
										}

										//user wants to sell stock
										if(s7==5){
											while(true){
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Sell Stock");
												System.out.println("----------");
												System.out.println();
												System.out.println("Note: press 'quit' for any input to return to previous page.");

												//get symbol
												System.out.print("Enter stock symbol to sell: ");
												String symbol = temp.nextLine().trim();
												if(symbol.equalsIgnoreCase("quit")) break;
												if(symbol.isEmpty()){
													System.out.println("Please enter a valid stock symbol. Loading...");
													Thread.sleep(1200);
													continue;
												}

												//check if user owns the stock
												String sql1 = "SELECT number_of_shares FROM portfolio_holdings WHERE portfolio_id = ? AND account_id = ? AND symbol = ? AND name1 = ?";
												PreparedStatement ps1 = conn.prepareStatement(sql1);
												ps1.setLong(1, portid6);
												ps1.setLong(2, account_id);
												ps1.setString(3, symbol);
												ps1.setString(4, symbol);
												ResultSet rs1 = ps1.executeQuery();
												if(!rs1.next()){
													rs1.close();
													ps1.close();
													System.out.println("You do not own this stock. Loading...");
													Thread.sleep(1200);
													continue;
												}
												double owned1 = rs1.getDouble("number_of_shares");
												rs1.close();
												ps1.close();

												//get number of shares to sell
												System.out.print("Enter number of shares to sell: ");
												String sStr2 = temp.nextLine().trim();
												if(sStr2.equalsIgnoreCase("quit")) break;
												if(sStr2.isEmpty()){
													System.out.println("Please enter a valid amount. Loading...");
													Thread.sleep(1200);
													continue;
												}
												boolean vSell = true;
												double sellAmount = 0.0;
												try{
													sellAmount = Double.parseDouble(sStr2);
													if(sellAmount<= 0) vSell = false;
												}catch(Exception e){
													vSell = false;
												}
												if(!vSell){
													System.out.println("Please enter a valid number. Loading...");
													Thread.sleep(1200);
													continue;
												}

												//check if enough shares
												if(sellAmount>owned1){
													System.out.println("You do not have enough shares. You own: " + owned1);
													Thread.sleep(1200);
													continue;
												}

												//get latest close price
												String sql2 = "SELECT close1 FROM SP500History WHERE code = ? AND date1 = (SELECT MAX(date1) FROM SP500History WHERE code = ?)";
												PreparedStatement ps2 = conn.prepareStatement(sql2);
												ps2.setString(1, symbol);
												ps2.setString(2, symbol);
												ResultSet rs2 = ps2.executeQuery();
												if(!rs2.next()){
													rs2.close();
													ps2.close();
													System.out.println("Error: could not find latest price. Loading...");
													Thread.sleep(1200);
													continue;
												}
												double price7 = rs2.getDouble("close1");
												rs2.close();
												ps2.close();

												double revenue5 = price7 *sellAmount;

												//find cash account
												String sql3 = "SELECT rt.cash_account_id, rt.total_amount_of_cash FROM contains r JOIN cash_account rt ON rt.cash_account_id = r.cash_account_id WHERE r.portfolio_id = ? AND r.account_id = ?";
												PreparedStatement ps3 = conn.prepareStatement(sql3);
												ps3.setLong(1, portid6);
												ps3.setLong(2, account_id);
												ResultSet rs3 = ps3.executeQuery();
												if(!rs3.next()){
													System.out.println("Error: cannot find cash account for this portfolio.");
													rs3.close();
													ps3.close();
													Thread.sleep(1200);
													continue;
												}
												long cashAId4 = rs3.getLong("cash_account_id");
												double cashBal4 = rs3.getDouble("total_amount_of_cash");
												rs3.close();
												ps3.close();

												//add revenue to cash
												String sql29 = "UPDATE cash_account SET total_amount_of_cash = total_amount_of_cash + ? WHERE cash_account_id = ?";
												PreparedStatement ps29 = conn.prepareStatement(sql29);
												ps29.setDouble(1, revenue5);
												ps29.setLong(2, cashAId4);
												ps29.executeUpdate();
												ps29.close();

												//update portfolio holdings
												if(sellAmount == owned1){
													String sql5 = "DELETE FROM portfolio_holdings WHERE portfolio_id = ? AND account_id = ? AND symbol = ? AND name1 = ?";
													PreparedStatement ps5 = conn.prepareStatement(sql5);
													ps5.setLong(1, portid6);
													ps5.setLong(2, account_id);
													ps5.setString(3, symbol);
													ps5.setString(4, symbol);
													ps5.executeUpdate();
													ps5.close();
												}
												else{
													String sql6 = "UPDATE portfolio_holdings SET number_of_shares = number_of_shares - ? WHERE portfolio_id = ? AND account_id = ? AND symbol = ? AND name1 = ?";
													PreparedStatement ps6 = conn.prepareStatement(sql6);
													ps6.setDouble(1, sellAmount);
													ps6.setLong(2, portid6);
													ps6.setLong(3, account_id);
													ps6.setString(4, symbol);
													ps6.setString(5, symbol);
													ps6.executeUpdate();
													ps6.close();
												}

		                                        //record transaction
		                                        String sql7 = "INSERT INTO transaction (transaction_type, amount) VALUES ('sell', ?) RETURNING transaction_id";
		                                        PreparedStatement ps7 = conn.prepareStatement(sql7);
		                                        ps7.setDouble(1, revenue5);
		                                        ResultSet rs7 = ps7.executeQuery();
		                                        long tid = -1;
		                                        if(rs7.next()){
													tid = rs7.getLong("transaction_id");
												}
		                                        rs7.close();
		                                        ps7.close();

		                                        if(tid == -1){
		                                            System.out.println("Error: could not record transaction. Loading...");
		                                            Thread.sleep(1200);
		                                            continue;
		                                        }
		                                        String sql8 = "INSERT INTO records (transaction_id, cash_account_id, portfolio_id, account_id) VALUES (?, ?, ?, ?)";
		                                        PreparedStatement ps8 = conn.prepareStatement(sql8);
		                                        ps8.setLong(1, tid);
		                                        ps8.setLong(2, cashAId4);
		                                        ps8.setLong(3, portid6);
		                                        ps8.setLong(4, account_id);
		                                        ps8.executeUpdate();
		                                        ps8.close();

		                                        //notify user of success
		                                    	System.out.println();
		                                        System.out.println("Successfully sold " + sellAmount + " shares of " + symbol + ".");
		                                        System.out.println("Revenue: $" + revenue5);
		                                        System.out.println("New cash balance: $" + (cashBal4 + revenue5));
		                                        System.out.println();
		                                        System.out.println("Press Enter to go back...");
		                                        temp.nextLine();
		                                        break;
											}
										}

										//user wants to view historical prices
										if(s7==6){
											while(true){
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Historical Prices");
												System.out.println("-----------------");
												System.out.println();

												//print the current stocks in the portfolio
												String sql33 = "SELECT symbol FROM portfolio_holdings WHERE portfolio_id = ? AND account_id = ?";
												PreparedStatement ps33 = conn.prepareStatement(sql33);
												ps33.setLong(1, portid6);
												ps33.setLong(2, account_id);
												ResultSet rs33 = ps33.executeQuery();
												boolean hasStocks = false;
												while(rs33.next()){
    												hasStocks = true;
    												String sym = rs33.getString("symbol");
    												System.out.println("-->	 " + sym);
												}
												System.out.println();
												rs33.close();
												ps33.close();
												if(!hasStocks){
    												System.out.println();
    												System.out.println("This portfolio has no stocks to view.");
													System.out.println();
    												System.out.println("Press Enter to go back...");
    												temp.nextLine();
    												break;
												}
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.println();
												System.out.print("Please enter the symbol/name for the stock from above that you wish to examine: ");
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid symbol/name for a stock.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if stock exists
												String sql30 = "SELECT * FROM SP500History WHERE code = ?";
    											PreparedStatement ps30 = conn.prepareStatement(sql30);
    											ps30.setString(1, pname9);
    											ResultSet rs30 = ps30.executeQuery();
    											if(!rs30.next()){
        											rs30.close();
        											ps30.close();
        											System.out.println("Invalid stock symbol/name. This stock does not exist. Loading...");
        											Thread.sleep(1200);
        											continue;
    											}
    											rs30.close();
    											ps30.close();

												//check if user entered a valid stock
												String sql34 = "SELECT 1 FROM portfolio_holdings WHERE portfolio_id = ? AND account_id = ? AND symbol = ?";
    											PreparedStatement ps34 = conn.prepareStatement(sql34);
    											ps34.setLong(1, portid6);
    											ps34.setLong(2, account_id);
    											ps34.setString(3, pname9);
    											ResultSet rs34 = ps34.executeQuery();
    											if (!rs34.next()) {
													System.out.println();
        											System.out.println("Invalid symbol.Loading...");
													continue;
    											}
    											rs34.close();
   												ps34.close();

												//ask user for time interval that they want to filter the plot by
												System.out.println();
												System.out.println("Select time interval:");
												System.out.println();
												System.out.println("1. Past 1 month");
												System.out.println("2. Past 3 months");
												System.out.println("3. Past 1 year");
												System.out.println("4. Past 5 years");
												System.out.println("5. All available data");
												System.out.println();
												System.out.print("Please enter your choice: ");
												String intChoice = temp.nextLine().trim();
												if (intChoice.equalsIgnoreCase("quit")) {
    												break;
												}
												int daysB1;
												switch(intChoice){
    												case "1": daysB1 = 30;break;
    												case "2": daysB1 = 90;break;
    												case "3": daysB1 = 365; break;
    												case "4": daysB1 = 365 *5; break;
    												case "5": daysB1 = -1; break;
    												default:
														System.out.println();
        												System.out.println("Invalid choice. Loading...");
        												Thread.sleep(1200);
        												continue;
												}
												String sql35 = "SELECT MAX(date1) FROM SP500History WHERE code = ?";
												PreparedStatement ps35 = conn.prepareStatement(sql35);
												ps35.setString(1, pname9);
												ResultSet rs35 = ps35.executeQuery();
												LocalDate latestD = null;
												if(rs35.next() && rs35.getDate(1) != null){
    												latestD = rs35.getDate(1).toLocalDate();
												}
												rs35.close();
												ps35.close();

												//compute date filter
												LocalDate startD = null;
												if(daysB1> 0&&latestD != null){
    												startD = latestD.minusDays(daysB1);
												}
											
												//now get all the past pricse
												String sql31;
												PreparedStatement ps31;
												if(startD == null){
    												sql31 = "(SELECT date1 AS da, close1 AS ca FROM SP500History WHERE code = ?) UNION ALL (SELECT timestamp1::date AS da, close1 AS ca FROM stockdata WHERE name1 = ?) ORDER BY da ASC";
    												ps31 = conn.prepareStatement(sql31);
    												ps31.setString(1, pname9);
    												ps31.setString(2, pname9);
												} 
												else{
    												sql31 = "(SELECT date1 AS da, close1 AS ca FROM SP500History WHERE code = ? AND date1 >= ?) UNION ALL (SELECT timestamp1::date AS da, close1 AS ca FROM stockdata WHERE name1 = ? AND timestamp1 >= ?) ORDER BY da ASC";
    												ps31 = conn.prepareStatement(sql31);
    												ps31.setString(1, pname9);
    												ps31.setDate(2, java.sql.Date.valueOf(startD));
    												ps31.setString(3, pname9);
    												ps31.setTimestamp(4, java.sql.Timestamp.valueOf(startD.atStartOfDay()));
												}
												ResultSet rs31 = ps31.executeQuery();
												List<LocalDate> date_x = new ArrayList<>();
												List<Double> price_y = new ArrayList<>();
												while (rs31.next()) {
    												date_x.add(rs31.getDate("da").toLocalDate());
    												price_y.add(rs31.getDouble("ca"));
												}
												rs31.close();
												ps31.close();
												if (date_x.isEmpty()) {
													System.out.println();
    												System.out.println("No historical price data found for this stock.");
    												System.out.println();
													System.out.println("Press Enter to go back...");
													temp.nextLine();
    												break;
												}
											
												//now plot
												double maxP = 0;
												for(double p : price_y){
    												if (p > maxP) maxP = p;
												}
												System.out.println();

												//avoid divideing by zero
												if(maxP == 0){
    												System.out.println("All prices are zero, cannot plot.");
												} 
												else{
    												for(int i = 0; i < date_x.size(); i++){
        												LocalDate d = date_x.get(i);
        												double p = price_y.get(i);
        												int barL2 = (int) ((p /maxP) * 40);
        												String bar4 = "*".repeat(Math.max(1, barL2));
														System.out.printf("%s | %s  (%.2f)%n", d.toString(), bar4, p);

    												}
												}
												System.out.println("----------------------------------------");

												//wait for user to go back to current page
												System.out.println();
												System.out.println();
												System.out.println("Press Enter to go back...");
												temp.nextLine();
    											break;
										
											}
										}

										//user wants to view future price predictions
										if(s7==7){
											while(true){
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Future Prediction of Stock Value");
												System.out.println("--------------------------------");
												System.out.println();

												//print messages
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.println();
												System.out.println("      You may wish to view any valid stock (i.e. you do not have to own it).");
												System.out.println();
												System.out.print("Please enter the symbol/name for the stock you wish to examine: ");
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid symbol/name for a stock.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if stock exists
												String sql30 = "SELECT * FROM SP500History WHERE code = ?";
    											PreparedStatement ps30 = conn.prepareStatement(sql30);
    											ps30.setString(1, pname9);
    											ResultSet rs30 = ps30.executeQuery();
    											if(!rs30.next()){
        											rs30.close();
        											ps30.close();
        											System.out.println("Invalid stock symbol/name. This stock does not exist. Loading...");
        											Thread.sleep(1200);
        											continue;
    											}
    											rs30.close();
    											ps30.close();
												
												//get how far into the future teh user wants to examine
												System.out.println();
												System.out.print("How many future days do you want to predict? ");
												String futInp = temp.nextLine().trim();
												if(futInp.equalsIgnoreCase("quit")){
													break;
												}
												int fdays;
												try {
    												fdays = Integer.parseInt(futInp);
												} catch (NumberFormatException e) {
    												System.out.println("Please choose a valid number. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//check if its a valid number
												if(fdays<=0){
													System.out.println("Please choose a valid number. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//get 2 real prices of the stock for linear extrapolation
												String sql35 = "SELECT date1, close1 FROM SP500History WHERE code = ? ORDER BY date1 DESC";
												PreparedStatement ps35 = conn.prepareStatement(sql35);
												ps35.setString(1, pname9);
												ResultSet rs35 = ps35.executeQuery();
												LocalDate d2 = null;
												LocalDate d3 = null;
												double p2 = -1;
												double p3 = -1;
												if(rs35.next()){
													d2=rs35.getDate("date1").toLocalDate();
													p2=rs35.getDouble("close1");
												}

												if(rs35.next()){
													d3=rs35.getDate("date1").toLocalDate();
													p3=rs35.getDouble("close1");
												}
												rs35.close();
												ps35.close();

												//cannot predict based on existing data
												if(d2 == null || d3==null){
													System.out.println("There is not enough data to make predictions at this time. Loading...");
													Thread.sleep(1200);
													continue;
												}
												long daysbet = Math.abs(java.time.temporal.ChronoUnit.DAYS.between(d3, d2));
        										if(daysbet== 0){
													daysbet =1;
												}
        										double slpe = (p2-p3)/daysbet;

        										//compute future predictedprices using linear extrapolation
        										System.out.println();
        										System.out.println("Future Predictions for: " + pname9);
        										System.out.println();
        										double maxpre = p2;
        										double[] predPri = new double[fdays];
        										LocalDate[] predD1 = new LocalDate[fdays];
        										for(int i = 0;i <fdays; i++) {
            										predD1[i] = d2.plusDays(i+1);
            										predPri[i] = p2 + slpe * (i+1);
            										if(predPri[i] >maxpre){
														maxpre = predPri[i];
													}
        										}

        										//now plot
        										for (int i = 0; i < fdays; i++) {
            										int barl2 = (int)((predPri[i] / maxpre) * 40);
            											if(barl2 <1){
															barl2=1;
														}
            											System.out.printf("%s | %s  (%.2f)%n", predD1[i].toString(),"*".repeat(barl2),predPri[i]);
        										}
												System.out.println("----------------------------------------");

												//wait for user to go back to current page
												System.out.println();
												System.out.println();
												System.out.println("Press Enter to go back...");
												temp.nextLine();
    											break;
										
											}
										}

										//user wants to view portfolio statistics
										if(s7==8){
											while(true){
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Portfolio Statistics");
												System.out.println("--------------------");
												System.out.println();

												//print messages
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.println();
												System.out.print("Please enter an interval of time in days: ");
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid time interval in days.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}
												//number not valid
												int intervald;
												try {
    												intervald = Integer.parseInt(pname9);
												} catch (NumberFormatException e) {
    												System.out.println("Please choose a valid number. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(intervald<=0){
													System.out.println("Please choose a valid number. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//get all the stocks in the portfolio
												String sql37 = "SELECT symbol FROM portfolio_holdings WHERE portfolio_id=? AND account_id=?";
    											PreparedStatement ps37 = conn.prepareStatement(sql37);
    											ps37.setLong(1, portid6);
    											ps37.setLong(2, account_id);
    											ResultSet rs37 = ps37.executeQuery();
    											List<String> stcksList = new ArrayList<>();
    											while (rs37.next()) {
        											stcksList.add(rs37.getString("symbol"));
    											}
    											rs37.close();
    											ps37.close();
												if(stcksList.isEmpty()){
        											System.out.println("There are no stocks in this portfolio.");
        											System.out.println();
													System.out.println();
													System.out.println("Press Enter to go back...");
													temp.nextLine();
    												break;
    											}

												//compute coefficient of variation for each stock
												//-->Satwick you need to finish doing this

												//compute Beta for each stock
												//-->Satwick you need to finish doing this

												//compute covariance/correlation matrix of the stocks in the portfolio
												//-->Satwick you need to finish doing this
												List<String> statsSymbols12 = new ArrayList<>();
												List<List<Double>> statsReturnss1 = new ArrayList<>();
												int minReturnsLen12 = Integer.MAX_VALUE;

												//Build daily return series for each stock in this portfolio
												for(String symb01 : stcksList){

													//find latest date for this stock in SP500History
													String sqlMax1 = "SELECT MAX(date1) FROM sp500history WHERE code = ?";
													PreparedStatement psMax1 = conn.prepareStatement(sqlMax1);
													psMax1.setString(1, symb01);
													ResultSet rsMax1 = psMax1.executeQuery();
													LocalDate latestD1 = null;
													if(rsMax1.next() && rsMax1.getDate(1) != null){
														latestD1 = rsMax1.getDate(1).toLocalDate();
													}
													rsMax1.close();
													psMax1.close();

													if (latestD1 == null) {
														//no data at all for this stock
														continue;
													}

													LocalDate startD1 = latestD1.minusDays(intervald);
													String sqlPrices2 ="(SELECT date1 AS da, close1 AS ca FROM sp500history WHERE code = ? AND date1 >= ?) UNION ALL (SELECT timestamp1::date AS da, close1 AS ca FROM stockdata WHERE name1 = ? AND timestamp1 >= ?) ORDER BY da ASC";

													PreparedStatement psP91 = conn.prepareStatement(sqlPrices2);
													psP91.setString(1, symb01);
													psP91.setDate(2, java.sql.Date.valueOf(startD1));
													psP91.setString(3, symb01);
													psP91.setTimestamp(4, java.sql.Timestamp.valueOf(startD1.atStartOfDay()));

													ResultSet rsP91 = psP91.executeQuery();
													List<Double> prices12 = new ArrayList<>();
													while (rsP91.next()) {
														prices12.add(rsP91.getDouble("ca"));
													}
													rsP91.close();
													psP91.close();

													if (prices12.size() < 2) {
														// not enough data to compute returns
														continue;
													}

													
													List<Double> rets1 = new ArrayList<>();
													for (int i = 1; i < prices12.size(); i++) {
														double prev2 = prices12.get(i - 1);
														double curr2 = prices12.get(i);
														if (prev2 != 0.0) {
															rets1.add((curr2 -prev2) / prev2);
														}
													}

													if (rets1.isEmpty()) {
														continue;
													}

													statsSymbols12.add(symb01);
													statsReturnss1.add(rets1);
													if (rets1.size() < minReturnsLen12) {
														minReturnsLen12 = rets1.size();
													}
												}

												
												if (statsSymbols12.isEmpty()) {
													System.out.println("Not enough historical data to compute statistics for this portfolio.");
													System.out.println();
													System.out.println("Press Enter to go back...");
													temp.nextLine();
													break;
												}

												
												for(int i = 0; i< statsReturnss1.size(); i++){
													List<Double> rList1 = statsReturnss1.get(i);
													while(rList1.size() > minReturnsLen12){
														rList1.remove(rList1.size() - 1);
													}
												}

												//Coefficient of variation
												System.out.println();
												System.out.println("Coefficient of Variation (daily returns over last " + intervald + " days)");
												System.out.println("-----------------------------------------------------------------");
												System.out.printf("%-10s %-14s %-14s %-14s%n", "Symbol", "Mean", "StdDev", "CoeffVar");

												List<Double> meansList23 = new ArrayList<>();
												List<Double> stdList12   = new ArrayList<>();

												for(int i = 0; i < statsSymbols12.size(); i++){
													List<Double> rets2 = statsReturnss1.get(i);

													double sum12 = 0.0;
													for(double r1 : rets2){
														sum12+= r1;
													}
													double mean12 = sum12 / rets2.size();

													double varSum1 = 0.0;
													for(double r1 : rets2) {
														double diff1 = r1 - mean12;
														varSum1 += diff1 * diff1;
													}
													double variance12 =(rets2.size() > 1) ? varSum1 / (rets2.size() - 1) : 0.0;
													double std12 = Math.sqrt(variance12);
													double cv12;
													if (Math.abs(mean12) > 1e-8) {
														cv12 = std12 / Math.abs(mean12);
													} else {
														cv12 = 0.0;
													}

													meansList23.add(mean12);
													stdList12.add(std12);

													System.out.printf("%-10s %-14.6f %-14.6f %-14.6f%n",statsSymbols12.get(i), mean12, std12, cv12);
												}

												
												List<Double> portfolioReturns11 = new ArrayList<>();
												for(int t1 = 0; t1 < minReturnsLen12; t1++){
													double sumR1 = 0.0;
													int countR1 = 0;
													for(int i = 0; i < statsReturnss1.size(); i++){
														List<Double> rList1 = statsReturnss1.get(i);
														if(t1 < rList1.size()) {
															sumR1 += rList1.get(t1);
															countR1++;
														}
													}
													if (countR1 > 0){
														portfolioReturns11.add(sumR1 /countR1);
													}
												}

												if(portfolioReturns11.size() < 2) {
													System.out.println();
													System.out.println("Not enough data to compute portfolio beta/covariance.");
													System.out.println();
												} 
												else{
													//compute mean and variance of portfolio returns
													double meanP1 = 0.0;
													for(double r1 : portfolioReturns11){
														meanP1 += r1;
													}
													meanP1 /= portfolioReturns11.size();

													double varSumP1 = 0.0;
													for(double r1 : portfolioReturns11){
														double diff = r1 - meanP1;
														varSumP1 += diff * diff;
													}
													double varP1;
													if(portfolioReturns11.size() > 1){
    													varP1 = varSumP1 / (portfolioReturns11.size() - 1);
													} 
													else{
    													varP1 = 0.0;
													}

													//Beta for each stock relative to this equal-weight portfolio
													System.out.println();
													System.out.println("Beta");
													System.out.println("----------------------");
													System.out.printf("%-10s %-14s%n", "Symbol", "Beta");

													for(int i = 0; i < statsSymbols12.size(); i++){
														List<Double> rets2 = statsReturnss1.get(i);
														int n3 = Math.min(rets2.size(), portfolioReturns11.size());
														if (n3 < 2 || varP1 == 0.0) {
															System.out.printf("%-10s %-14s%n", statsSymbols12.get(i), "N/A");
															continue;
														}
														double meanS5 = meansList23.get(i);
														double covSum12 = 0.0;
														for(int t = 0; t < n3; t++){
															covSum12 += (rets2.get(t) - meanS5) * (portfolioReturns11.get(t) - meanP1);
														}
														double covSP1 = covSum12/ (n3 - 1);
														double beta1 = covSP1 / varP1;
														System.out.printf("%-10s %-14.6f%n", statsSymbols12.get(i), beta1);
													}

													//Covariance and correlation matrices between all stocks
													int k2 = statsSymbols12.size();
													if (k2 >= 2) {
														System.out.println();
														System.out.println("Covariance Matrix (daily returns)");
														System.out.println("---------------------------------");

														//header row
														System.out.printf("%-10s", "");
														for (int i = 0; i < k2; i++) {
															System.out.printf("%-10s", statsSymbols12.get(i));
														}
														System.out.println();

														for(int i = 0; i < k2; i++){
															String si1 = statsSymbols12.get(i);
															List<Double> ri1 = statsReturnss1.get(i);
															double meani1 = meansList23.get(i);
															System.out.printf("%-10s", si1);

															for(int j = 0; j < k2; j++){
																List<Double> rj1 = statsReturnss1.get(j);
																double meanj1 = meansList23.get(j);
																int n89 = Math.min(ri1.size(), rj1.size());
																if(n89 < 2){
																	System.out.printf("%-10s", "N/A");
																	continue;
																}
																double sumCov1 = 0.0;
																for(int t = 0; t < n89; t++){
																	sumCov1 += (ri1.get(t) - meani1) * (rj1.get(t) - meanj1);
																}
																double cov1 = sumCov1 / (n89 - 1);
																System.out.printf("%-10.6f", cov1);
															}
															System.out.println();
														}

														System.out.println();
														System.out.println("Correlation Matrix (daily returns)");
														System.out.println("----------------------------------");

														//header row
														System.out.printf("%-10s", "");
														for (int i = 0; i < k2; i++) {
															System.out.printf("%-10s", statsSymbols12.get(i));
														}
														System.out.println();

														for(int i = 0; i < k2; i++){
															String si1 = statsSymbols12.get(i);
															List<Double> ri1 = statsReturnss1.get(i);
															double meani1 = meansList23.get(i);
															double stdi1 = stdList12.get(i);
															System.out.printf("%-10s", si1);

															for(int j = 0; j < k2; j++){
																List<Double> rj = statsReturnss1.get(j);
																double meanj2 = meansList23.get(j);
																double stdj2 = stdList12.get(j);
																int n4 = Math.min(ri1.size(), rj.size());
																if(n4 < 2 || stdi1 == 0.0 || stdj2 == 0.0){
																	System.out.printf("%-10s", "N/A");
																	continue;
																}
																double sumCov1 = 0.0;
																for(int t = 0; t < n4; t++){
																	sumCov1 += (ri1.get(t) - meani1) * (rj.get(t) - meanj2);
																}
																double cov23 = sumCov1 / (n4 - 1);
																double corr1= cov23 / (stdi1 * stdj2);
																System.out.printf("%-10.6f", corr1);
															}
															System.out.println();
														}
													}
												}

												//wait for user to go back to current page
												System.out.println();
												System.out.println();
												System.out.println("Press Enter to go back...");
												temp.nextLine();
    											break;
										
											}
										}

										//user wants to add new daily stock info
										if(s7==9){
											while(true){
												clearScreen();
												System.out.println();
												System.out.println();
												System.out.println("Currently Selected Portfolio: id " + portid6);
												System.out.println("*************************************");
												System.out.println();
												System.out.println("Add New Daily Stock Information");
												System.out.println("-------------------------------");
												System.out.println();

												//print messages
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.println();
												System.out.println("      You may wish to add information to any valid stock (i.e. you do not have to own it).");
												System.out.println();
												System.out.print("Please enter the symbol/name for the stock you wish to add to: ");
												String pname9 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(pname9.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(pname9.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid symbol/name for a stock.");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if stock exists
												String sql30 = "SELECT * FROM SP500History WHERE code = ?";
    											PreparedStatement ps30 = conn.prepareStatement(sql30);
    											ps30.setString(1, pname9);
    											ResultSet rs30 = ps30.executeQuery();
    											if(!rs30.next()){
        											rs30.close();
        											ps30.close();
													System.out.println();
        											System.out.println("Invalid stock symbol/name. This stock does not exist. Loading...");
        											Thread.sleep(1200);
        											continue;
    											}
    											rs30.close();
    											ps30.close();
												
												//ask for the price
												System.out.print("Please enter the price: ");
												String price2 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(price2.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(price2.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid price for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if price is a valid number
												double p2num;
												try {
    												p2num = Double.parseDouble(price2);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(p2num <0.0){
													System.out.println();
													System.out.println("Please enter a valid price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//ask for the volume
												System.out.print("Please enter the volume: ");
												String vol2 = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(vol2.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(vol2.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid volume for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if volume is a valid number
												long vol;
												try {
    												vol = Long.parseLong(vol2);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid volume for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(vol <0.0 || (vol> Long.MAX_VALUE)){
													System.out.println();
													System.out.println("Please enter a valid volume for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//ask for open price
												System.out.print("Please enter the open price: ");
												String opentemp = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(opentemp.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(opentemp.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid open price for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if open price is a valid number
												double open;
												try {
    												open = Double.parseDouble(opentemp);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid open price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(vol <0.0 || (vol> Double.MAX_VALUE)){
													System.out.println();
													System.out.println("Please enter a valid open price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//ask for close price
												System.out.print("Please enter the close price: ");
												String closetemp = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(closetemp.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(closetemp.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid close price for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if close price is a valid number
												double close;
												try {
    												close = Double.parseDouble(closetemp);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid close price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(vol <0.0 || (vol> Double.MAX_VALUE)){
													System.out.println();
													System.out.println("Please enter a valid close price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//ask for high price
												System.out.print("Please enter the high price: ");
												String hightemp = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(hightemp.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(hightemp.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid high price for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if high price is a valid number
												double high;
												try {
    												high = Double.parseDouble(hightemp);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid high price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(vol <0.0 || (vol> Double.MAX_VALUE)){
													System.out.println();
													System.out.println("Please enter a valid high price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//ask for low price
												System.out.print("Please enter the low price: ");
												String lowtemp = temp.nextLine().trim();
								
												//check if user wants to cancel and go back
												if(lowtemp.equalsIgnoreCase("quit")){
													break;
												}
												//value is empty
												if(lowtemp.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid low price for the stock. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//check if low price is a valid number
												double low;
												try {
    												low = Double.parseDouble(lowtemp);
												} catch (NumberFormatException e) {
													System.out.println();
    												System.out.println("Please enter a valid low price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}
												if(vol <0.0 || (vol> Double.MAX_VALUE)){
													System.out.println();
													System.out.println("Please enter a valid low price for the stock. Loading...");
    												Thread.sleep(1200);
    												continue;
												}

												//now add to the stock data
												String sql35 = "INSERT INTO stockdata(name1, timestamp1, volume, close1, low, high, open1) VALUES (?, ?, ?, ?, ?, ?, ?)";
    											PreparedStatement ps35 = conn.prepareStatement(sql35);
												OffsetDateTime timestamp3 = OffsetDateTime.now();
    											ps35.setString(1, pname9);
												ps35.setObject(2, timestamp3);
												ps35.setLong(3, vol);
												ps35.setDouble(4, close); 
												ps35.setDouble(5, low);
												ps35.setDouble(6, high);
												ps35.setDouble(7, open);
    											int c6 = ps35.executeUpdate();
    											ps35.close();
												if(c6==0){
													System.out.println();
													System.out.println("Error: could not add new data. Loading...");
													//wait 2 seconds to simulate app loading
													try{
    													Thread.sleep(1200);
													} catch(InterruptedException e){
    													e.printStackTrace();
													}
													continue;
												}

												//record transaction
												String sql38 = "INSERT INTO transaction (transaction_type, amount) VALUES ('add_stock_data', 0) RETURNING transaction_id";
        										PreparedStatement ps38 = conn.prepareStatement(sql38);
        										ResultSet r38 = ps38.executeQuery();

        										long tid7 = -1;
        										if (r38.next()) {
            										tid7 = r38.getLong("transaction_id");
        										}
        										r38.close();
        										ps38.close();

        										if (tid7 == -1) {
            										System.out.println();
            										System.out.println("Error: could not record transaction. Loading...");
            										Thread.sleep(1200);
            										continue;
        										}
        										String sql39 = "INSERT INTO records (transaction_id, cash_account_id, portfolio_id, account_id) VALUES (?, ?, ?, ?)";
        										PreparedStatement ps39 = conn.prepareStatement(sql39);
        										ps39.setLong(1, tid7);
												ps39.setLong(2, system_cashaccid);
												ps39.setLong(3, system_portid);
        										ps39.setLong(4, account_id);
        										ps39.executeUpdate();
        										ps39.close();

												//print success message
												System.out.println();
												System.out.println("Successfully added new data to " + pname9);


												//wait for user to go back to current page
												System.out.println();
												System.out.println();
												System.out.println("Press Enter to go back...");
												temp.nextLine();
    											break;
										
											}
										}
										//end of Select a Portfolio loop
									}
								}
								continue;
							}
						}

						if(backToHomeMenu1){
							continue;
						}
					}

					//user chooses Stock List Management
					if(homeSelection == 2){
						//code
						//Satwick do this
						boolean stayInPortfolio = true;
						boolean backToHomeMenu2 = false;
						while(stayInPortfolio){
							clearScreen();
							System.out.println();
							System.out.println();
							printStockListManagementMenu();
						
							//check if user entered a number
							String s2temp = temp.nextLine().trim();
								
							//check if user wants to cancel and go back
							//value is empty
							if(s2temp.isEmpty()){
								System.out.println();
								System.out.println("Invalid input. Loading...");
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1200);
								} catch(InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							//number not valid
							int s2;
							try {
    							s2 = Integer.parseInt(s2temp);
							} catch (NumberFormatException e) {
								System.out.println();
    							System.out.println("Invalid input. Loading...");
    							Thread.sleep(1200);
    							continue;
							}
							//check if the number entered is a valid option
							if(s2!=1 && s2!=2 && s2!=3 && s2!=4 && s2!=5 && s2!=6){
								System.out.println("Invalid input. Loading...");
				
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1000);
								} catch (InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							// user wants to view all accessible stock lists
							if (s2 == 1) {
								while (true) {
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("View All Accessible Stock Lists");
								System.out.println("-------------------------------");
								System.out.println();

								try {
									
									System.out.println("Your Private Stock Lists:");
									System.out.println("-------------------------");

									String sqlPrivate ="SELECT stock_list_id, visibility FROM stock_list WHERE account_id = ? AND visibility = 'private' ORDER BY stock_list_id";

									PreparedStatement psPriv = conn.prepareStatement(sqlPrivate);
									psPriv.setLong(1, account_id);
									ResultSet rsPriv = psPriv.executeQuery();

									boolean hasPrivate = false;
									while (rsPriv.next()) {
										hasPrivate = true;
										long listId = rsPriv.getLong("stock_list_id");
										String vis = rsPriv.getString("visibility");
										System.out.println("ID: " + listId + "  |  Visibility: " + vis);
									}
									if (!hasPrivate) {
										System.out.println("None");
									}
									rsPriv.close();
									psPriv.close();

									//lists SHARED WITH YOU
									System.out.println();
									System.out.println("Stock Lists Shared With Me:");
									System.out.println("---------------------------");

									String sqlShared ="SELECT sl.stock_list_id, sl.visibility, a.username AS owner_username FROM shared_stock_lists ssl JOIN stock_list sl ON ssl.stock_list_id = sl.stock_list_id JOIN accounts a ON sl.account_id = a.account_id WHERE ssl.shared_with_account_id = ? ORDER BY sl.stock_list_id";

									PreparedStatement psShared = conn.prepareStatement(sqlShared);
									psShared.setLong(1, account_id);
									ResultSet rsShared = psShared.executeQuery();

									boolean hasShared = false;
									while (rsShared.next()) {
										hasShared = true;
										long listId = rsShared.getLong("stock_list_id");
										String vis2 = rsShared.getString("visibility");
										String owner = rsShared.getString("owner_username");
										System.out.println("ID: " + listId +"  |  Owner: " + owner +"  |  Visibility: " + vis2);
									}
									if (!hasShared) {
										System.out.println("None");
									}
									rsShared.close();
									psShared.close();

									//3. PUBLIC lists (accessible to everyone)
									System.out.println();
									System.out.println("Public Stock Lists:");
									System.out.println("-------------------");

									String sqlPublic ="SELECT sl.stock_list_id, a.username AS owner_username FROM stock_list sl JOIN accounts a ON sl.account_id = a.account_id WHERE sl.visibility = 'public' ORDER BY sl.stock_list_id";

									PreparedStatement psPublic = conn.prepareStatement(sqlPublic);
									ResultSet rsPublic = psPublic.executeQuery();

									boolean hasPublic = false;
									while (rsPublic.next()) {
										hasPublic = true;
										long listId = rsPublic.getLong("stock_list_id");
										String owner = rsPublic.getString("owner_username");
										System.out.println("ID: " + listId +"  |  Owner: " + owner +"  |  Visibility: public");
									}
									if (!hasPublic) {
										System.out.println("None");
									}
									rsPublic.close();
									psPublic.close();

								} catch (SQLException e) {
									System.out.println("Error loading stock lists.");
									e.printStackTrace();
								}

								System.out.println();
								System.out.print("Press Enter to return Stock List Management...");
								System.out.println();
								temp.nextLine();

								// goes back to Stock List Management page
								break;
							}
						}

						//user wants to create a stocklist
						if(s2==2){
							//temp.nextLine();
							while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Create Stock List");
								System.out.println("-----------------");
								System.out.println();
								System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
								System.out.println("********************************************************************");
								System.out.println();
								System.out.print("Enter a name for your stocklist (this cannot be changed after): ");
								String slname = temp.nextLine().trim();
							
								//check if user wants to cancel and go back
								if(slname.equalsIgnoreCase("quit")){
									break;
								}
								//name is empty
								if(slname.isEmpty()){
									System.out.println("Please choose a name for the Stock List.");
									//
									//wait 2 seconds to simulate app loading
									try{
										Thread.sleep(1000);
									} catch (InterruptedException e){
										e.printStackTrace();
									}
									continue;
								}
								//name is empty
								if(slname.equals("SYSTEM_PORTFOLIO")){
									System.out.println("Please choose another name for the Stock List.");
									//
									//wait 2 seconds to simulate app loading
									try{
										Thread.sleep(1000);
									} catch (InterruptedException e){
										e.printStackTrace();
									}
									continue;
								}

								try{
								//otherwise continue with creating a stocklist
								String sqlSLC3 = "INSERT INTO stock_list (account_id, visibility) VALUES (?, 'private') RETURNING stock_list_id";
								PreparedStatement psslc1 = conn.prepareStatement(sqlSLC3);
								psslc1.setLong(1, account_id);
								ResultSet rsslc1 = psslc1.executeQuery();
								long newlistId = -1;
								if (rsslc1.next()){
									newlistId = rsslc1.getLong("stock_list_id");
									System.out.println();
									System.out.println("Stock List \"" + slname + "\" created successfully!");
									System.out.println("Visibility: Private Stock List");
									System.out.println("Stock List ID: " + newlistId);
								} 
								else{
									System.out.println();
									System.out.println("Stock List created but ID could not be retrieved.");
								}
								rsslc1.close();
								psslc1.close();
								} catch (SQLException e){
									System.out.println("Error creating Stock List.");
									e.printStackTrace();
								}
							
								System.out.println();
								System.out.print("Press Enter to return Stock List Management...");
								System.out.println();
								temp.nextLine();

								//goes back to Portfolio Management page
								break;
							}
						}
						if (s2==3){
								//first list all portfolios
							while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Edit My Stock Lists");
								System.out.println("-------------------");
								System.out.println();
								System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
								System.out.println("********************************************************************");
								System.out.println();
								//print the users portfolio ids
									
								String sqlsl1 = "SELECT sl.stock_list_id AS list_id, sl.visibility AS visibility, sl.account_id AS owner_id, a.username AS owner_username FROM stock_list sl JOIN accounts a ON sl.account_id = a.account_id WHERE sl.account_id = ? UNION SELECT sl.stock_list_id AS list_id, sl.visibility AS visibility, sl.account_id AS owner_id, a.username AS owner_username FROM stock_list sl JOIN shared_stock_lists s ON sl.stock_list_id = s.stock_list_id JOIN accounts a ON sl.account_id = a.account_id WHERE s.shared_with_account_id = ? UNION SELECT sl.stock_list_id AS list_id, sl.visibility AS visibility, sl.account_id AS owner_id, a.username AS owner_username FROM stock_list sl JOIN accounts a ON sl.account_id = a.account_id WHERE sl.visibility = 'public' AND sl.account_id <> ? ORDER BY list_id";
									PreparedStatement pssl4 = conn.prepareStatement(sqlsl1);
									pssl4.setLong(1, account_id);
									pssl4.setLong(2, account_id);
									pssl4.setLong(3, account_id);
									ResultSet rssl4 = pssl4.executeQuery();
									boolean hasAnything3 = false;
									int count23sl = 0;
									boolean issullectedowner = false;
									while(rssl4.next()){
    									hasAnything3 = true;
										count23sl++;
    									long listid = rssl4.getLong("list_id");
    									String slname = rssl4.getString("visibility");
										boolean isownerornot;
										String ownernameus = rssl4.getString("owner_username");
										if (rssl4.getLong("owner_id") == account_id){
											isownerornot = true;
										} else {
											isownerornot = false;
										}

										//dont show system portfolio
										if(slname.equals("SYSTEM_PORTFOLIO")){
											continue;
										}
										if (isownerornot){
											System.out.println("ID: " + listid + "  |  Visibility: " + slname + "  |  (You are the owner)");
										} 
										else{
											System.out.println("ID: " + listid + "  |  Visibility: " + slname + "  |  Owner of the list : " + ownernameus);
										}
									}

									if(!hasAnything3){
    									System.out.println("You do not have any Stock Lists created yet.");
										System.out.println();
										System.out.println("Press Enter to go back...");
										temp.nextLine();
										//goes back to Portfolio Management page
    									break;
									}
									rssl4.close();
									pssl4.close();
									
									System.out.println();
									System.out.print("Enter the Stock List id (listed above) that you wish to further select: ");
									String idline4 = temp.nextLine().trim();
								
									//check if user wants to cancel and go back
									if(idline4.equalsIgnoreCase("quit")){
										break;
									}
									//name is empty
									if(idline4.isEmpty()){
										System.out.println();
										System.out.println("Please enter a valid stock list id.");
										//wait 2 seconds to simulate app loading
										try{
    										Thread.sleep(1000);
										} catch (InterruptedException e){
    										e.printStackTrace();
										}
										continue;
									}
									//check if the user chose a valid portfolio id from the list above
									//otherwise continue with selecting a portfolio
									long selectedListid6;
									
									try{
    									selectedListid6 = Long.parseLong(idline4);
									}catch(NumberFormatException e) {
										System.out.println();
    									System.out.println("Please enter a valid stock list ID.");
    									Thread.sleep(1200);
    									continue;
									}
									String checksqlsl116 = "SELECT sl.visibility AS visibility, sl.account_id AS owner_id, a.username AS owner_username FROM stock_list AS sl JOIN accounts AS a ON sl.account_id = a.account_id LEFT JOIN shared_stock_lists AS s ON sl.stock_list_id = s.stock_list_id WHERE sl.stock_list_id = ? AND (sl.account_id = ? OR sl.visibility = 'public' OR s.shared_with_account_id = ?)";
									PreparedStatement pSLs = conn.prepareStatement(checksqlsl116);
									pSLs.setLong(1, selectedListid6);
									pSLs.setLong(2, account_id);
									pSLs.setLong(3, account_id);
									ResultSet slCrs = pSLs.executeQuery();
									if(!slCrs.next()) {
    									System.out.println();
    									System.out.println("Please enter a valid Stock List ID.");
    									Thread.sleep(1200);
    									slCrs.close();
    									pSLs.close();
    									continue;
									}
									//ensure user doesnt accidentally enter system portfolio id
									String tepmnum = slCrs.getString("visibility");
									if(tepmnum.equals("SYSTEM_PORTFOLIO")){
										System.out.println();
    									System.out.println("Please enter a valid stocklist ID.");
    									Thread.sleep(1200);
    									slCrs.close();
    									pSLs.close();
    									continue;
									}
									String currVisbility = slCrs.getString("visibility");
									String sullectedowneer = slCrs.getString("owner_username");
									long sullectedowneerid = slCrs.getLong("owner_id");
									if (sullectedowneerid == account_id){
										issullectedowner = true;
									} else {
										issullectedowner = false;
									}

									slCrs.close();
									pSLs.close();
									//go to inner loop for the selected portfolio
									while(true){
										clearScreen();
										System.out.println();
										System.out.println();
										System.out.println("Currently Selected Stock List: id " + selectedListid6);
										System.out.println();
										System.out.println("Current Visibility: " + currVisbility);
										System.out.println("*************************************");
										System.out.println();
										printSelectedStockListMenu();
										//get user input
										//check if user entered a number
										String sSLline1 = temp.nextLine().trim();
										
										//check if the user just pressed enter
										if(sSLline1.isEmpty()){
    										System.out.println("Invalid input. Loading...");
    										try { 
												Thread.sleep(1200); 
											}catch (InterruptedException e) { e.printStackTrace(); }
    										continue;
										}
										int ssl7;
										try{
    										ssl7 = Integer.parseInt(sSLline1);
										}catch (NumberFormatException e) {
    										System.out.println("Invalid input. Loading...");
    										//wait 1 second to simulate app loading
    										try { 
												Thread.sleep(1200); 
											}catch(InterruptedException ie) { ie.printStackTrace(); }
    										continue;
										}
										//check if the number entered is a valid option
										if(ssl7!=1 && ssl7!=2 && ssl7!=3 && ssl7!=4 && ssl7!=5 && ssl7!=6 && ssl7!=7 && ssl7!=8){
											System.out.println("Invalid input. Loading...");
				
											//wait 2 seconds to simulate app loading
											try{
    											Thread.sleep(1200);
											} catch (InterruptedException e){
    											e.printStackTrace();
											}
											continue;
										}
										if (!issullectedowner){
											if(ssl7 == 2 | ssl7 == 3 | ssl7==4){
												System.out.println();
												System.out.println("Error: you are not the owner of this Stock List, so you cannot perform this action. Loading...");
												try{
													Thread.sleep(1200);
												} catch(InterruptedException e){
													e.printStackTrace();
												}
												continue;
											}
										}
										//user wants to go back to home menu
										if(ssl7 == 8){
											break;
										}
										if (ssl7 == 1){
											clearScreen();
											System.out.println();
											System.out.println();
											System.out.println("View List Summary");
											System.out.println("-----------------");
											System.out.println();
											String sqlViewlist1 = "SELECT symbol FROM made_up_of WHERE stock_list_id = ? ORDER BY symbol";
											PreparedStatement psVL2 = conn.prepareStatement(sqlViewlist1);
											psVL2.setLong(1, selectedListid6);
											ResultSet rsVL2 = psVL2.executeQuery();
											boolean hasAnyStocks34 = false;
											while(rsVL2.next()){
												hasAnyStocks34 = true;
												String stockcode = rsVL2.getString("symbol");
												System.out.println("Stock Symbol/Name: " + stockcode);
											}
											if(!hasAnyStocks34){
												System.out.println("This Stock List has no stocks added yet and is currently empty.");
											}
											rsVL2.close();
											psVL2.close();
											
											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 2){
											clearScreen();
											System.out.println();
											System.out.println();
											System.out.println("Add Stock to List");
											System.out.println("-----------------");
											System.out.println();
											System.out.println("Visibility of the current Stock list: " + currVisbility);
											System.out.println("--------------------------------------------------");
											System.out.println("Current ID of the Stock List: " + selectedListid6);
											System.out.println("--------------------------------------------------");

											System.out.print("Enter a valid stock symbol (or type 'quit' to go back): ");
											String symboinput = temp.nextLine().trim();

											if (symboinput.equalsIgnoreCase("quit")){
												continue;
											}

											if(symboinput.isEmpty()){
												System.out.println();
												System.out.println("Please enter a valid stock symbol/name.");
												//wait 2 seconds to simulate app loading
												try{
													Thread.sleep(1200);
												} catch(InterruptedException e){
													e.printStackTrace();
												}
												continue;
											}

											String symboupper = symboinput.toUpperCase();
											String stocksqlchecker = "SELECT name1 FROM stockinfo WHERE symbol = ?";
											PreparedStatement psStockCheckinfo = conn.prepareStatement(stocksqlchecker);
											psStockCheckinfo.setString(1, symboupper);
											ResultSet rsStockCheckinfo = psStockCheckinfo.executeQuery();
											String stocknamecheck=null;
											if (!rsStockCheckinfo.next()){
												System.out.println();
												System.out.println("Error: could not find stock symbol/name. Exiting...");
												rsStockCheckinfo.close();
												psStockCheckinfo.close();
												//wait 2 seconds to simulate app loading
												try{
													Thread.sleep(1200);
												} catch(InterruptedException e){
													e.printStackTrace();
												}
												continue;
											} 
											else{
												stocknamecheck = rsStockCheckinfo.getString("name1");
											}
											rsStockCheckinfo.close();
											psStockCheckinfo.close();


											String sqlInsertList = "INSERT INTO made_up_of (stock_list_id, account_id, name1, symbol) VALUES (?, ?, ?, ?) ON CONFLICT DO NOTHING";
											PreparedStatement psInsertList = conn.prepareStatement(sqlInsertList);
											psInsertList.setLong(1, selectedListid6);
											psInsertList.setLong(2, account_id);
											psInsertList.setString(3, stocknamecheck);
											psInsertList.setString(4, symboupper);
											int cInsert = psInsertList.executeUpdate();
											psInsertList.close();

											if (cInsert==0){
												System.out.println("This stock is already in the Stock List");
											}
											else{
												System.out.println();
												System.out.println("Successfully added " + symboupper + " to the Stock List.");
											}

											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 3){
											clearScreen();
											System.out.println();
											System.out.println();
											System.out.println("Remove Stock from List.");
											System.out.println("----------------------");
											System.out.println();
											System.out.println("Press quit to return to previous page.");
											System.out.println("****************************************");
											System.out.println();

											System.out.print("Enter the stock symbol/name you wish to remove from this Stock List: ");
											String remsymbolinput = temp.nextLine().trim();

											if (remsymbolinput.equalsIgnoreCase("quit")){
												continue;
											}
											if(remsymbolinput.isEmpty()){
												System.out.println();
												System.out.println("Please enter a valid stock symbol/name.");
												//wait 2 seconds to simulate app loading
												try{
													Thread.sleep(1200);
												} catch(InterruptedException e){
													e.printStackTrace();
												}
												continue;
											}
											String remsymboupper23 = remsymbolinput.toUpperCase();
											String deletesqlsl23 = "DELETE FROM made_up_of WHERE stock_list_id = ? AND account_id = ? AND symbol = ?";
											PreparedStatement psDelsl234 = conn.prepareStatement(deletesqlsl23);
											psDelsl234.setLong(1, selectedListid6);
											psDelsl234.setLong(2, account_id);
											psDelsl234.setString(3, remsymboupper23);
											int cDelsl234 = psDelsl234.executeUpdate();
											psDelsl234.close();

											if (cDelsl234 > 0){
												System.out.println();
												System.out.println("Successfully removed " + remsymboupper23 + " from the Stock List.");
											} else {
												System.out.println();
												System.out.println("Error: could not remove stock from Stock List. Please ensure the stock symbol/name is correct and is in the Stock List.");
											}

											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 4){
											//change visibility
											clearScreen();
											System.out.println();
											System.out.println();
											System.out.println("Make Private/Public");
											System.out.println("-------------------");
											System.out.println();
											String newVisibility = currVisbility.equals("private") ? "public" : "private";
											String sqlUpdateVis = "UPDATE stock_list SET visibility = ? WHERE stock_list_id = ? AND account_id = ?";
											PreparedStatement psUV = conn.prepareStatement(sqlUpdateVis);
											psUV.setString(1, newVisibility);
											psUV.setLong(2, selectedListid6);
											psUV.setLong(3, account_id);
											int cUV = psUV.executeUpdate();
											psUV.close();
											if(cUV==0){
												System.out.println();
												System.out.println("Error: could not update visibility. Loading...");
												//wait 2 seconds to simulate app loading
												try{
													Thread.sleep(1200);
												} catch(InterruptedException e){
													e.printStackTrace();
												}
												continue;
											}
											currVisbility = newVisibility;
											System.out.println();
											System.out.println("Successfully changed visibility to " + newVisibility + ".");
											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 5){
											clearScreen();
											System.out.println();
											System.out.println("View Reviews");
											System.out.println("------------");
											System.out.println();
											String sqlViewreviews;
											if (currVisbility.equals("public") || issullectedowner){
												sqlViewreviews = "SELECT r.account_id AS account_id, a.username AS username, r.rating AS rating, r.review_text AS review_text, r.created_at AS created_at FROM stock_list_reviews AS r JOIN accounts AS a ON r.account_id = a.account_id WHERE r.stock_list_id = ? ORDER BY r.created_at DESC";
											}
											else{
												sqlViewreviews = "SELECT r.account_id, a.username, r.rating, r.review_text, r.created_at FROM stock_list_reviews r JOIN accounts a ON r.account_id = a.account_id WHERE r.stock_list_id = ? AND r.account_id = ? ORDER BY r.created_at DESC";

											}
											

											PreparedStatement psViewreviews12 = conn.prepareStatement(sqlViewreviews);
											psViewreviews12.setLong(1, selectedListid6);
											if (currVisbility.equals("private") && !issullectedowner){
												psViewreviews12.setLong(2, account_id);
											}
											ResultSet rsViewreviews123 = psViewreviews12.executeQuery();
											boolean hasAnyReviews123 = false;
											while(rsViewreviews123.next()){
												hasAnyReviews123 = true;
												long reviewaccountid234 = rsViewreviews123.getLong("account_id");
												String reviewusername234 = rsViewreviews123.getString("username");
												int reviewrating234 = rsViewreviews123.getInt("rating");
												String reviewtext234 = rsViewreviews123.getString("review_text");
												Timestamp reviewtime234 = rsViewreviews123.getTimestamp("created_at");

												System.out.println("Username: " + reviewusername234);
												System.out.println("Rating (out of 5): " + reviewrating234);
												System.out.println("Review Text: " + reviewtext234);
												System.out.println("Reviewed on: " + reviewtime234.toString());
												System.out.println("-------------------------------------");
											}
											if(!hasAnyReviews123){
												System.out.println("This Stock List has no reviews yet.");
											}
											rsViewreviews123.close();
											psViewreviews12.close();
											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 6){
											clearScreen();
											System.out.println();
											System.out.println("Edit Review/Write Review/Delete My review.");
											System.out.println("-----------------------------------------");
											System.out.println();
											System.out.println("Note: enter 'quit' to return to the previous page.");
											System.out.println("**************************************************");
											System.out.println();

											boolean hasUserReviewedAlready1 = false;
											int currratings1 = 0;
											String currreviewtext1 = null;
											String checkuserreviewsql1 = "SELECT rating, review_text FROM stock_list_reviews WHERE stock_list_id = ? AND account_id = ?";
											PreparedStatement pscheckuserreviewsql124 = conn.prepareStatement(checkuserreviewsql1);
											pscheckuserreviewsql124.setLong(1, selectedListid6);
											pscheckuserreviewsql124.setLong(2, account_id);
											ResultSet rscheckuserreviewsql1245 = pscheckuserreviewsql124.executeQuery();
											if (rscheckuserreviewsql1245.next()){
												hasUserReviewedAlready1 = true;
												currratings1 = rscheckuserreviewsql1245.getInt("rating");
												currreviewtext1 = rscheckuserreviewsql1245.getString("review_text");
											}
											rscheckuserreviewsql1245.close();
											pscheckuserreviewsql124.close();
											if (hasUserReviewedAlready1){
												System.out.println("You have already reviewed this Stock List.");
												System.out.println("Your Current Rating (out of 5): " + currratings1);
												System.out.println("Your Current Review Text: " + currreviewtext1);
												System.out.println("-------------------------------------");
												System.out.println("Options:");
												System.out.println("1) Edit Review");
												System.out.println("2) Delete Review");
												System.out.println("3) Cancel and return");
												System.out.print("Enter your choice (1-3) or 'quit' to return: ");
												String reviewoptionline123 = temp.nextLine().trim();
												if (reviewoptionline123.equalsIgnoreCase("quit") || reviewoptionline123.equals("3")){
													continue;
												}
												if (reviewoptionline123.equals(2)){
													String deletesqlreview12345 = "DELETE FROM stock_list_reviews WHERE stock_list_id = ? AND account_id = ?";
													PreparedStatement psdeletesqlreview12345 = conn.prepareStatement(deletesqlreview12345);
													psdeletesqlreview12345.setLong(1, selectedListid6);
													psdeletesqlreview12345.setLong(2, account_id);
													int cdeletesqlreview123456 = psdeletesqlreview12345.executeUpdate();
													psdeletesqlreview12345.close();
													if (cdeletesqlreview123456 > 0){
														System.out.println("Successfully deleted your review for this Stock List.");
													} else {
														System.out.println("Error: could not delete your review for this Stock List.");
													}
													System.out.print("Press Enter to continue...");
													temp.nextLine();
													continue;
												}
												if (reviewoptionline123.equals(1)){
													System.out.println();
													System.out.print("Start writing your review");
												}
											} else {
												System.out.println("You have not reviewed this Stock List yet.");
												System.out.println("------------------------------------------");
											}

											int newgivenrating;
											while(true){
												System.out.print("Enter your rating for this Stock List (1-5): ");
												String newgivingratingproc1 = temp.nextLine().trim();
												if (newgivingratingproc1.equalsIgnoreCase("quit")){
													newgivenrating = -1;
													break;
												}
												if (newgivingratingproc1.isEmpty()){
													System.out.println("Please enter a valid rating.");
													continue;
												}
												
												newgivenrating = 1;
												try{
    												newgivenrating = Integer.parseInt(newgivingratingproc1);
												}catch(NumberFormatException e) {
    												System.out.println("Invalid number. Defaulting to 1.");
												}
												break;
											}

											if(newgivenrating == -1){
												continue;
											}
											System.out.print("Enter your review text: ");
											String newreviewtextproc12 = temp.nextLine();
											if (newreviewtextproc12.equalsIgnoreCase("quit")){
												continue;
											}

											Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
											if (hasUserReviewedAlready1){
												String sqlupdatedversion1 = "UPDATE stock_list_reviews SET rating = ?, review_text = ?, created_at = ? WHERE stock_list_id = ? AND account_id = ?";
												PreparedStatement psupdatedversion123 = conn.prepareStatement(sqlupdatedversion1);
												psupdatedversion123.setInt(1, newgivenrating);
												psupdatedversion123.setString(2, newreviewtextproc12);
												psupdatedversion123.setTimestamp(3, currentTimestamp);
												psupdatedversion123.setLong(4, selectedListid6);
												psupdatedversion123.setLong(5, account_id);
												int cupdatedversion1234 = psupdatedversion123.executeUpdate();
												psupdatedversion123.close();

												if (cupdatedversion1234 > 0){
													System.out.println("Successfully updated your review for this Stock List.");
												} else {
													System.out.println("Error: could not update your review for this Stock List.");
												}
											}
											else{
												String sqlinsertthings = "INSERT INTO stock_list_reviews (stock_list_id, account_id, rating, review_text, created_at) VALUES (?, ?, ?, ?, ?)";
												PreparedStatement psinsertthings1235 = conn.prepareStatement(sqlinsertthings);
												psinsertthings1235.setLong(1, selectedListid6);
												psinsertthings1235.setLong(2, account_id);
												psinsertthings1235.setInt(3, newgivenrating);
												psinsertthings1235.setString(4, newreviewtextproc12);
												psinsertthings1235.setTimestamp(5, currentTimestamp);
												int cinsertthings12356 = psinsertthings1235.executeUpdate();
												psinsertthings1235.close();

												if (cinsertthings12356 > 0){
													System.out.println("Successfully added your review for this Stock List.");
												} else {
													System.out.println("Error: could not add your review for this Stock List.");
												}
											}
											System.out.println();
											System.out.print("Press Enter to continue...");
											temp.nextLine();
											continue;
										}
										if (ssl7 == 7){
											boolean heis = true;
											while(heis){
												clearScreen();
												System.out.println();
												System.out.println("View List Statistics.");
												System.out.println("----------------------");
												System.out.println();
												System.out.println("Currently selected Stock List ID: " + selectedListid6);
												System.out.println("Currently selected Stock List Visibility: " +  currVisbility);
												System.out.println("****************************************");
												System.out.println("Note: press 'quit' for any of the inputs to go back to the previous page.");
												System.out.println();

												System.out.println("How many days do you want to see the stock List Statistics for? ");
												String numofdaysline123 = temp.nextLine().trim();
												if (numofdaysline123.equalsIgnoreCase("quit")){
													break;
												}
												if (numofdaysline123.isEmpty()){
													System.out.println();
													System.out.println("Please enter a valid number of days.");
													//wait 2 seconds to simulate app loading
													try{
														Thread.sleep(1200);
													} catch(InterruptedException e){
														e.printStackTrace();
													}
													continue;
												}
												int numofodays1234;
												try{
													numofodays1234 = Integer.parseInt(numofdaysline123);
												}
												catch(NumberFormatException e) {
													System.out.println();
													System.out.println("Please enter a valid number of days.");
													try{
														Thread.sleep(1200);
													} catch(InterruptedException ie){
														ie.printStackTrace();
													}
													continue;
												}
												if (!(numofodays1234 > 0)){
													System.out.println();
													System.out.println("Please enter a valid number of days.");
													//wait 2 seconds to simulate app loading
													try{
														Thread.sleep(1200);
													} catch(InterruptedException e){
														e.printStackTrace();
													}
													continue;
												}
												List<String> stosymbols = new ArrayList<>();
												String sqlgettersstockers = "SELECT symbol FROM made_up_of WHERE stock_list_id = ?";
												PreparedStatement psgettersstockers1234 = conn.prepareStatement(sqlgettersstockers);
												psgettersstockers1234.setLong(1, selectedListid6);
												ResultSet rsgettersstockers12345 = psgettersstockers1234.executeQuery();
												while(rsgettersstockers12345.next()){
													String stossymb = rsgettersstockers12345.getString("symbol");
													stosymbols.add(stossymb);
												}
												rsgettersstockers12345.close();
												psgettersstockers1234.close();
												if (stosymbols.isEmpty()){
													System.out.println();
													System.out.println("This Stock List has no stocks added yet and currently empty.");
													System.out.println();
													System.out.print("Press Enter to go back...");
													temp.nextLine();
													break;
												}
												List<String> faistocks = new ArrayList<>();
												List<List<Double>> faivaluesretrn = new ArrayList<>();
												int datminretnlen = Integer.MAX_VALUE;
												for (String tyus : stosymbols){
													
													String sqljaxmax = "SELECT MAX(date1) AS max_date FROM sp500history WHERE code = ?";
													PreparedStatement psjaxmax232 = conn.prepareStatement(sqljaxmax);
													psjaxmax232.setString(1, tyus);
													ResultSet rsjaxmax23245= psjaxmax232.executeQuery();
													LocalDate maxdaetvali = null;
													if (rsjaxmax23245.next()){
														Date maxdatesql = rsjaxmax23245.getDate(1);
														if (maxdatesql != null){
															maxdaetvali = maxdatesql.toLocalDate();
														}
													}
													rsjaxmax23245.close();
													psjaxmax232.close();
													if (maxdaetvali == null){
														continue; 
													}
													LocalDate stadter = maxdaetvali.minusDays(numofodays1234);
													String slqpricus = "SELECT date1 AS da, close1 AS ca FROM sp500history WHERE code = ? AND date1 >= ? UNION ALL SELECT timestamp1::date AS da, close1 AS ca FROM stockdata WHERE name1 = ? AND timestamp1 >= ? ORDER BY da ASC";
													PreparedStatement pspricus2w2324 = conn.prepareStatement(slqpricus);
													pspricus2w2324.setString(1, tyus);
													pspricus2w2324.setDate(2, Date.valueOf(stadter));
													pspricus2w2324.setString(3, tyus);
													pspricus2w2324.setTimestamp(4, java.sql.Timestamp.valueOf(stadter.atStartOfDay()));
													ResultSet rspricus2w232456 = pspricus2w2324.executeQuery();
													List<Double> pcriselittre = new ArrayList<>();
													while(rspricus2w232456.next()){
														double pricese = rspricus2w232456.getDouble("ca");
														pcriselittre.add(pricese);
													}
													rspricus2w232456.close();
													pspricus2w2324.close();
													int r = 2;
													if (pcriselittre.size() < r){
														continue;
													}
													List<Double> oooppricsreves = new ArrayList<>();
													for (int ui = 1; ui < pcriselittre.size(); ui++){
														double prevprce = pcriselittre.get(ui - 1);
														double currprce = pcriselittre.get(ui);
														double prpercchange;
														prpercchange = (currprce - prevprce) / prevprce * 100.0;
														oooppricsreves.add(prpercchange);
													}
													if (oooppricsreves.isEmpty()){
														continue;
													}
													faistocks.add(tyus);
													faivaluesretrn.add(oooppricsreves);
													if(oooppricsreves.size() < datminretnlen){
														datminretnlen = oooppricsreves.size();
													}
												}
												if (faistocks.isEmpty()){
													System.out.println();
													System.out.println("This Stock List has no stocks with sufficient data to calculate statistics for the given number of days.");
													System.out.println();
													System.out.print("Press Enter to go back...");
													temp.nextLine();
													break;
												}
												for (int iijsa = 0; iijsa < faivaluesretrn.size(); iijsa++){
													List<Double> ucrrenetlista = faivaluesretrn.get(iijsa);
													while (ucrrenetlista.size() > datminretnlen){
														ucrrenetlista.remove(ucrrenetlista.size() - 1);
													}
												}
												System.out.println();
												System.out.println("Coefficient of variation for the last" + numofodays1234 + " days:");
												System.out.println("--------------------------------------------------");
												List<Double> codoalueys = new ArrayList<>();
												List<Double> avgyvaluys = new ArrayList<>();
												for (int ix = 0; ix < faistocks.size(); ix++){
													String stocyms = faistocks.get(ix);
													List<Double> retrnsvlues = faivaluesretrn.get(ix);
													double yummer = 0.0;
													for (double valuwuwuw : retrnsvlues){
														yummer += valuwuwuw;
													}
													double renma = yummer / retrnsvlues.size();
													double harusum = 0.0;
													for (double valuwuwuw : retrnsvlues){
														double yywyq = valuwuwuw - renma;
														harusum += Math.pow(yywyq, 2);
													}
													double uytrianue;
													if (retrnsvlues.size() > 1){
														uytrianue = harusum / (retrnsvlues.size() - 1);
													} else {
														uytrianue = 0.0;
													}
													double statsta = Math.sqrt(uytrianue);
													double coodovofiene;
													if (Math.abs(renma) > 1e-8){
														coodovofiene = statsta / Math.abs(renma);
													} else {
														coodovofiene = 0.0;
													}
													codoalueys.add(renma);
													avgyvaluys.add(coodovofiene);
													System.out.printf("Stock Symbol/Name: %s | Mean: %.4f%% | Coefficient of Variation: %.4f%n", stocyms, renma, coodovofiene);
												}
												List <Double> finlCodoalueys = new ArrayList<>();
												for (int yue = 0; yue < datminretnlen; yue++){
													double ysufinela = 0.0;
													int coufinale = 0;
													for (int xi = 0; xi < faivaluesretrn.size(); xi++){
														List<Double> retrnsvluesfinal2 = faivaluesretrn.get(xi);
														if (yue < retrnsvluesfinal2.size()){
															ysufinela += retrnsvluesfinal2.get(yue);
															coufinale++;
														}
													}
													if (coufinale > 0){
														finlCodoalueys.add(ysufinela / coufinale);
													} else {
														finlCodoalueys.add(0.0);
													}
												}
												if (finlCodoalueys.size() < 2){
													System.out.println();
													System.out.println("Not enough data to calculate overall Stock List statistics.");
													System.out.println();
												}
												else{
													double opmeanp = 0.0;
													for (double vilia : finlCodoalueys){
														opmeanp += vilia;
													}
													opmeanp = opmeanp / finlCodoalueys.size();
													double opstddev2323 = 0.0;
													for (double vilia : finlCodoalueys){
														double uwueweiw = vilia - opmeanp;
														opstddev2323 += uwueweiw * uwueweiw;
													}
													double opstddevfinaleowoe;
													if (finlCodoalueys.size() > 1){
														opstddevfinaleowoe = Math.sqrt(opstddev2323 / (finlCodoalueys.size() - 1));
													} else {
														opstddevfinaleowoe = 0.0;
													}
													System.out.println();
													System.out.printf("beta (relative to equal weight stock list returns for the list is): %.4f%n", opstddevfinaleowoe / Math.abs(opmeanp));
													System.out.println("--------------------------------------------------");
													System.out.println();
													for(int ttm = 0; ttm < faistocks.size(); ttm++){
														List<Double> retrnsvluesfinal2334 = faivaluesretrn.get(ttm);
														int nhewew = Math.min(retrnsvluesfinal2334.size(), finlCodoalueys.size());
														if (nhewew < 2 || opstddevfinaleowoe == 0.0){
															System.out.printf("Stock Symbol/Name: %s | Beta: N/A (insufficient data)%n", faistocks.get(ttm));
															continue;
														}
														double coocvariancew = codoalueys.get(ttm);
														double uwueuwue = 0.0;
														for(int ppeu = 0; ppeu <nhewew; ppeu++){
															double retnsvaleuspp = retrnsvluesfinal2334.get(ppeu);
															double overallretvaluepp = finlCodoalueys.get(ppeu);
															uwueuwue += (retnsvaleuspp - coocvariancew) * (overallretvaluepp - opmeanp);
														}
														double hshahsabetavalue = uwueuwue/ (nhewew - 1);
														double varlistew = opstddevfinaleowoe * opstddevfinaleowoe;
														double betavaluesfinale;
														if(varlistew == 0.0){
															betavaluesfinale = 0.0;
														}
														else{
															betavaluesfinale = hshahsabetavalue / varlistew;
														}
														System.out.printf("Stock Symbol/Name: %s | Beta: %.4f%n", faistocks.get(ttm), betavaluesfinale);
													}
													int numstocksfa = faistocks.size();
													if (numstocksfa >= 2) {
														// we will use codoalueys as the list of means for each stock
														// and build a matching list of std devs for each stock
														List<Double> stddevvaluestocks = new ArrayList<>();

														for (int i = 0; i < faistocks.size(); i++) {
															List<Double> retslistforstock19291 = faivaluesretrn.get(i);

															//use the same mean as before for this stock
															double meania = codoalueys.get(i);

															double varsumone = 0.0;
															for(double oneval : retslistforstock19291) {
																double diffv = oneval - meania;
																varsumone += diffv * diffv;
															}

															double varianceone81;
															if(retslistforstock19291.size() > 1) {
																varianceone81 = varsumone / (retslistforstock19291.size() - 1);
															} 
															else{
																varianceone81 = 0.0;
															}

															double stdone91 = Math.sqrt(varianceone81);
															stddevvaluestocks.add(stdone91);
														}

														System.out.println();
														System.out.println("Covariance Matrix (daily returns)");
														System.out.println("---------------------------------");

														//header row
														System.out.printf("%-10s", "");
														for (int i = 0; i < numstocksfa; i++) {
															System.out.printf("%-10s", faistocks.get(i));
														}
														System.out.println();

														//each row of covariance matrix
														for (int i = 0; i < numstocksfa; i++) {
															String stocki81 = faistocks.get(i);
															List<Double> reti01 = faivaluesretrn.get(i);
															double meani01 = codoalueys.get(i);

															System.out.printf("%-10s", stocki81);

															for (int j = 0; j < numstocksfa; j++) {
																List<Double> retj101 = faivaluesretrn.get(j);
																double meanj89 = codoalueys.get(j);

																int n8 = Math.min(reti01.size(), retj101.size());
																if (n8 < 2) {
																	System.out.printf("%-10s", "N/A");
																	continue;
																}

																double sumCovij101 = 0.0;
																for (int t = 0; t < n8; t++) {
																	sumCovij101 += (reti01.get(t) - meani01) * (retj101.get(t) - meanj89);
																}
																double covij = sumCovij101 / (n8 - 1);
																System.out.printf("%-10.6f", covij);
															}
															System.out.println();
														}

														System.out.println();
														System.out.println("Correlation Matrix (daily returns)");
														System.out.println("----------------------------------");

														// header row
														System.out.printf("%-10s", "");
														for(int i = 0; i < numstocksfa; i++){
															System.out.printf("%-10s", faistocks.get(i));
														}
														System.out.println();

														// each row of correlation matrix
														for(int i = 0; i < numstocksfa; i++){
															String stocki72 = faistocks.get(i);
															List<Double> reti891 = faivaluesretrn.get(i);
															double meani1 = codoalueys.get(i);
															double stdi11 = stddevvaluestocks.get(i);

															System.out.printf("%-10s", stocki72);

															for(int j = 0; j < numstocksfa; j++){
																List<Double> retj11 = faivaluesretrn.get(j);
																double meanj09 = codoalueys.get(j);
																double stdj11 = stddevvaluestocks.get(j);

																int n9 = Math.min(reti891.size(), retj11.size());
																if (n9 < 2 || stdi11 == 0.0 || stdj11 == 0.0) {
																	System.out.printf("%-10s", "N/A");
																	continue;
																}

																double sumCovij1 = 0.0;
																for(int t = 0; t < n9; t++){
																	sumCovij1 += (reti891.get(t) - meani1) * (retj11.get(t) - meanj09);
																}
																double covij2 = sumCovij1 / (n9 - 1);
																double corrij3 = covij2 / (stdi11 * stdj11);

																System.out.printf("%-10.6f", corrij3);
															}
															System.out.println();
														}
													}
												}
												System.out.println();
												System.out.print("Press Enter to go back...");
												temp.nextLine();
												break;
											}
										}

									}	
								}
							}
						
					if(s2 == 4){
						boolean justbetrue = true;
						while(justbetrue){
						clearScreen();
						System.out.println();
						System.out.println();
						System.out.println("Delete Stock List");
						System.out.println("-----------------");
						System.out.println();
						System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
						System.out.println("********************************************************************");
						System.out.println();
							String Delsqlslist = "SELECT stock_list_id, visibility FROM stock_list WHERE account_id = ? ORDER BY stock_list_id";
							PreparedStatement psDelsli11 = conn.prepareStatement(Delsqlslist);
							psDelsli11.setLong(1, account_id);
							ResultSet rsDelsli11 = psDelsli11.executeQuery();
							boolean hasAnyStocklists = false;
							while(rsDelsli11.next()){
								hasAnyStocklists = true;
								long slistid = rsDelsli11.getLong("stock_list_id");
								String slistname = rsDelsli11.getString("visibility");

								//dont show system portfolio
								if(slistname.equals("SYSTEM_PORTFOLIO")){
									continue;
								}
								System.out.println("ID: " + slistid + "  |  Visibility: " + slistname);
							}
							rsDelsli11.close();
							psDelsli11.close();
							if (!hasAnyStocklists){
								System.out.println("You do not have any Stock Lists created yet.");
								System.out.println();
								System.out.println("Press Enter to go back...");
								temp.nextLine();
								break;
							}
							System.out.println();
							System.out.print("Enter the Stock List ID you wish to delete: ");
							String delslidline23 = temp.nextLine().trim();

							if (delslidline23.equalsIgnoreCase("quit")){
								break;
							}
							if(delslidline23.isEmpty()){
								System.out.println();
								System.out.println("Please enter a valid Stock List ID.");
								//wait 2 seconds to simulate app loading
								try{
									Thread.sleep(1000);
								} catch (InterruptedException e){
									e.printStackTrace();
								}
								continue;
							}
							long delstocklistid23;
							try{
								delstocklistid23 = Long.parseLong(delslidline23);
							}catch(NumberFormatException e) {
								System.out.println();
								System.out.println("Please enter a valid Stock List ID.");
								Thread.sleep(1200);
								continue;
							}
							String sqlcheckinglist = "SELECT 1 FROM stock_list WHERE account_id = ? AND stock_list_id = ?";
							PreparedStatement pscheckeringlist1 = conn.prepareStatement(sqlcheckinglist);
							pscheckeringlist1.setLong(1, account_id);
							pscheckeringlist1.setLong(2, delstocklistid23);
							ResultSet rscheckinglist123 = pscheckeringlist1.executeQuery();
							boolean ownsListersass = rscheckinglist123.next();
							if (!ownsListersass){
								System.out.println();
								System.out.println("You do not own this Stock List. Loading...");
								rscheckinglist123.close();
								pscheckeringlist1.close();
								try{
									Thread.sleep(1000);
								} catch (InterruptedException e){
									e.printStackTrace();
								}
								continue;
							}
							rscheckinglist123.close();
							pscheckeringlist1.close();

							System.out.println("Are you sure you want to delete Stock List ID " + delstocklistid23 + "? This action cannot be undone. (yes/no): ");
							String confirmdel = temp.nextLine().trim();
							if (!confirmdel.equalsIgnoreCase("yes")){
								System.out.println();
								System.out.println("Deletion cancelled. Loading...");
								//wait 2 seconds to simulate app loading
								try{
									Thread.sleep(1200);
								} catch (InterruptedException e){
									e.printStackTrace();
								}
								continue;
							}
							if (!confirmdel.equalsIgnoreCase("yes") && !confirmdel.equalsIgnoreCase("no")){
								System.out.println();
								System.out.println("Invalid input. Loading...");
								//wait 2 seconds to simulate app loading
								try{
									Thread.sleep(1200);
								} catch (InterruptedException e){
									e.printStackTrace();
								}
								continue;
							}
							String sqldeleterows11 = "DELETE FROM stock_list WHERE stock_list_id = ? AND account_id = ?";
							PreparedStatement psdeleterows112 = conn.prepareStatement(sqldeleterows11);
							psdeleterows112.setLong(1, delstocklistid23);
							psdeleterows112.setLong(2, account_id);
							int cdelrows112 = psdeleterows112.executeUpdate();
							psdeleterows112.close();

							if (cdelrows112 > 0){
								System.out.println("deleted successfully.");
							}
							else{
								System.out.println("Error: could not delete Stock List. Loading...");
							}
							System.out.println();
							System.out.print("Press Enter to go back...");
							temp.nextLine();
							justbetrue = false;
						}
						continue;
					}
					if (s2== 5){
						while(true){
						clearScreen();
						System.out.println();
						System.out.println("Share Stock Lists");
						System.out.println("-----------------");
						System.out.println();
						System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
						System.out.println("********************************************************************");
						
						String sqlsharelists = "SELECT stock_list_id, visibility FROM stock_list WHERE account_id = ? ORDER BY stock_list_id";
						PreparedStatement psssharelists = conn.prepareStatement(sqlsharelists);
						psssharelists.setLong(1, account_id);
						ResultSet rssharelists = psssharelists.executeQuery();
						boolean hasAnyStocklists2 = false;

						while(rssharelists.next()){
							hasAnyStocklists2 = true;
							long slistid2 = rssharelists.getLong("stock_list_id");
							String slistname2 = rssharelists.getString("visibility");

							//dont show system portfolio
							if(slistname2.equals("SYSTEM_PORTFOLIO")){
								continue;
							}
							System.out.println("ID: " + slistid2 + "  |  Visibility: " + slistname2);
						}
						rssharelists.close();
						psssharelists.close();

						if (!hasAnyStocklists2){
							System.out.println("You do not have any Stock Lists created yet.");
							System.out.println();
							System.out.println("Type Quit to go back...");
							String backquitting2 = temp.nextLine().trim();
							if (backquitting2.equalsIgnoreCase("quit")){
								break;
							}
							else{
								continue;
							}
						}

						System.out.println();
						System.out.print("Press Enter the Stock List ID you wish to share: ");
						String sharelistidline = temp.nextLine().trim();

						if (sharelistidline.equalsIgnoreCase("quit")){
							break;
						}

						if(sharelistidline.isEmpty()){
							System.out.println();
							System.out.println("Please enter a valid Stock List ID.");
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}
						long sharelistid23;
						try{
							sharelistid23 = Long.parseLong(sharelistidline);
						}catch(NumberFormatException e) {
							System.out.println();
							System.out.println("Please enter a valid Stock List ID.");
							Thread.sleep(1200);
							continue;
						}
						String sqlcheckinglist1 = "SELECT 1 FROM stock_list WHERE account_id = ? AND stock_list_id = ?";
						PreparedStatement pscheckinglist12 = conn.prepareStatement(sqlcheckinglist1);
						pscheckinglist12.setLong(1, account_id);
						pscheckinglist12.setLong(2, sharelistid23);
						ResultSet rscheckinglist123 = pscheckinglist12.executeQuery();

						boolean ownsListers = rscheckinglist123.next();
						rscheckinglist123.close();
						pscheckinglist12.close();

						if (!ownsListers){
							System.out.println();
							System.out.println("You do not own this Stock List. Loading...");
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}
						System.out.print("Enter the username of the user you wish to share this Stock List with: ");
						String sharewithusername = temp.nextLine().trim();
						if (sharewithusername.equalsIgnoreCase("quit")){
							break;
						}
						if (sharewithusername.isEmpty()){
							System.out.println();
							System.out.println("Please enter a valid username.");
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}
						long friendexits;
						String sqlfinduser = "SELECT account_id FROM accounts WHERE username = ?";
						PreparedStatement psfinduser1 = conn.prepareStatement(sqlfinduser);
						psfinduser1.setString(1, sharewithusername);
						ResultSet rsfinduser1 = psfinduser1.executeQuery();
						if (!rsfinduser1.next()){
							System.out.println();
							System.out.println("User not found. Loading...");
							rsfinduser1.close();
							psfinduser1.close();
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}
						friendexits = rsfinduser1.getLong("account_id");
						rsfinduser1.close();
						psfinduser1.close();
						if (friendexits == account_id){
							System.out.println();
							System.out.println("You cannot share a Stock List with yourself. Loading...");
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}

						long mysharedlistfriendID = account_id;
						long friendships1 = Math.min(account_id, friendexits);
						long friendships2 = Math.max(account_id, friendexits);
						String checkfriendsql = "SELECT 1 FROM friendship WHERE friend1 = ? AND friend2 = ?";
						PreparedStatement pscheckfriend1234 = conn.prepareStatement(checkfriendsql);
						pscheckfriend1234.setLong(1, friendships1);
						pscheckfriend1234.setLong(2, friendships2);
						ResultSet rscheckfriend1234 = pscheckfriend1234.executeQuery();
						boolean areTheyFriends = rscheckfriend1234.next();
						rscheckfriend1234.close();
						pscheckfriend1234.close();
						if (!areTheyFriends){
							System.out.println();
							System.out.println("You can only share Stock Lists with your friends. Loading...");
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}
						
						String sqlalreadyshared = "SELECT 1 FROM shared_stock_lists WHERE owner_account_id = ? AND stock_list_id = ? AND shared_with_account_id = ?";
						PreparedStatement psalreadyshared134 = conn.prepareStatement(sqlalreadyshared);
						psalreadyshared134.setLong(1, account_id);
						psalreadyshared134.setLong(2, sharelistid23);
						psalreadyshared134.setLong(3, friendexits);
						ResultSet rsalreadyshared1345 = psalreadyshared134.executeQuery();
						boolean hasAlreadyShared = rsalreadyshared1345.next();
						rsalreadyshared1345.close();
						psalreadyshared134.close();
						if (hasAlreadyShared){
							System.out.println();
							System.out.println("You have already shared this Stock List with this user. Loading...");
							//wait 2 seconds to simulate app loading
							try{
								Thread.sleep(1000);
							} catch (InterruptedException e){
								e.printStackTrace();
							}
							continue;
						}

						String sqlsharesliistinsert = "INSERT INTO shared_stock_lists (owner_account_id, stock_list_id, shared_with_account_id) VALUES (?, ?, ?)";
						PreparedStatement pssharelistinsertings12 = conn.prepareStatement(sqlsharesliistinsert);
						pssharelistinsertings12.setLong(1, account_id);
						pssharelistinsertings12.setLong(2, sharelistid23);
						pssharelistinsertings12.setLong(3, friendexits);
						int csharelistinsertings123 = pssharelistinsertings12.executeUpdate();
						pssharelistinsertings12.close();
						if (csharelistinsertings123 > 0){
							System.out.println();
							System.out.println("Stock List shared successfully with " + sharewithusername + "!");
						}
						else{
							System.out.println();
							System.out.println("Error: could not share Stock List. Loading...");
						}
						System.out.println();
						System.out.print("Type Quit to go back...");
						String backquitting23 = temp.nextLine().trim();
						if (backquitting23.equalsIgnoreCase("quit")){
							break;
						} 
						}
						continue;
					}
					if (s2 == 6){
						//go back to home menu
						backToHomeMenu2 = true;
						break;
				}
			}
			}

					//user chooses Social Features
					if(homeSelection == 3){
						//code
						//Satwick do this
						boolean stayInFriendmenu= true;
						boolean backToHomeMenu3 = false;
						while(stayInFriendmenu){
							clearScreen();
							System.out.println();
							System.out.println();
							printFriendsandSocialFeaturesMenu();
						
							//check if user entered a number
							String s3temp = temp.nextLine().trim();
								
							//check if user wants to cancel and go back
							//value is empty
							if(s3temp.isEmpty()){
								System.out.println();
								System.out.println("Invalid input. Loading...");
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1200);
								} catch(InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							//number not valid
							int s3;
							try {
    							s3 = Integer.parseInt(s3temp);
							} catch (NumberFormatException e) {
								System.out.println();
    							System.out.println("Invalid input. Loading...");
    							Thread.sleep(1200);
    							continue;
							}
							
							//check if the number entered is a valid option
							if(s3!=1 && s3!=2 && s3!=3 && s3!=4 && s3!=5 && s3!=6 && s3!=7){
								System.out.println("Invalid input. Loading...");
				
								//wait 2 seconds to simulate app loading
								try{
    								Thread.sleep(1000);
								} catch (InterruptedException e){
    								e.printStackTrace();
								}
								continue;
							}
							//user wants to go back to home menu
							if(s3 == 7){
								stayInFriendmenu = false;
								backToHomeMenu3 = true;
							}
							if (s3 == 1){
								while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("View Friends");
								System.out.println("------------");
								System.out.println();
								System.out.println();

								String sqlViewfriends ="SELECT a.account_id, a.username FROM friendship f, accounts a WHERE (f.friend1 = ? AND a.account_id = f.friend2) OR (f.friend2 = ? AND a.account_id = f.friend1) ORDER BY a.username";
								PreparedStatement psVFriends1 = conn.prepareStatement(sqlViewfriends);
								psVFriends1.setLong(1, account_id);
								psVFriends1.setLong(2, account_id);
								ResultSet rsVFriends1 = psVFriends1.executeQuery();
								Boolean hasAnyFriends12 = false;
								while(rsVFriends1.next()){
									hasAnyFriends12 = true;
									long fid = rsVFriends1.getLong("account_id");
									String fname = rsVFriends1.getString("username");
									System.out.println("Friend ID: " + fid + " | Friend Username: " + fname);
								}
								rsVFriends1.close();
								psVFriends1.close();
								if (!hasAnyFriends12) {
									System.out.println("You have no friends added yet.");
								}
								System.out.println();
								System.out.print("Type 'quit' to go back to Friends menu (anything else to refresh): ");
								String cmd = temp.nextLine().trim();
								if (cmd.equalsIgnoreCase("quit")) {
									break;  // leave View Friends and go back to Friends menu
								}
							}
								continue;
							}
							if (s3 == 2){
								while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Delete Friend");
								System.out.println("----------------");
								System.out.println();
								System.out.println();
								
								//Show all your friends
								String sqlViewfriends2 ="SELECT a.account_id, a.username FROM friendship f, accounts a WHERE (f.friend1 = ? AND a.account_id = f.friend2) OR (f.friend2 = ? AND a.account_id = f.friend1) ORDER BY a.username";
							
								PreparedStatement psVFriends2 = conn.prepareStatement(sqlViewfriends2);
								psVFriends2.setLong(1, account_id);
								psVFriends2.setLong(2, account_id);
								ResultSet rsVFriends3 = psVFriends2.executeQuery();
							
								Boolean hasAnyFriends14 = false;
								while(rsVFriends3.next()){
									hasAnyFriends14 = true;
									long fid2 = rsVFriends3.getLong("account_id");
									String fname2 = rsVFriends3.getString("username");
									System.out.println("Friend ID: " + fid2 + " | Friend Username: " + fname2);
								}
							
								rsVFriends3.close();
								psVFriends2.close();
							
								if (!hasAnyFriends14) {
									System.out.println("You have no friends added yet.");
									System.out.println();
									System.out.print("Press Enter to return back.....");
									temp.nextLine();
									break;
								}
							
								// 2) Ask which friend to delete
								System.out.println();
								System.out.print("Enter the Friend ID of the friend you want to delete: ");
								String delfrndname = temp.nextLine().trim();
							
								if (delfrndname.equalsIgnoreCase("quit")){
									// go back to friends menu
									break;
								}
								
								if(delfrndname.isEmpty()){
									System.out.println();
									System.out.println("Please enter a valid Friend ID.");
									try{
										Thread.sleep(1200);
									} catch(InterruptedException e){
										e.printStackTrace();
									}
									continue;
								}
							
								long delfridnum;
								try {
									delfridnum = Long.parseLong(delfrndname);
								} catch (NumberFormatException e) {
									System.out.println();
									System.out.println("Please enter a valid Friend ID.");
									try {
										Thread.sleep(1200);
									} catch (InterruptedException ex) {
										ex.printStackTrace();
									}
									continue;
								}
							
								// 3) Make sure that ID is actually your friend
								String sqlCheckFriend ="SELECT a.username FROM friendship f, accounts a WHERE (f.friend1 = ? AND f.friend2 = ? AND a.account_id = f.friend2) OR (f.friend2 = ? AND f.friend1 = ? AND a.account_id = f.friend1)";
							
								PreparedStatement psCheck = conn.prepareStatement(sqlCheckFriend);
								psCheck.setLong(1, account_id);
								psCheck.setLong(2, delfridnum);
								psCheck.setLong(3, account_id);
								psCheck.setLong(4, delfridnum);
								ResultSet rsCheck = psCheck.executeQuery();
							
								String friendUsername = null;
								if (rsCheck.next()) {
									friendUsername = rsCheck.getString("username");
								}
								rsCheck.close();
								psCheck.close();
							
								if (friendUsername == null) {
									System.out.println();
									System.out.println("That Friend ID is not in your friend list.");
									try {
										Thread.sleep(1200);
									} catch (InterruptedException e) {
										e.printStackTrace();
									}
									continue;
								}
							
								// 4) Delete friendship
								long myId = account_id;
								long f1 = Math.min(myId, delfridnum);
								long f2 = Math.max(myId, delfridnum);
							
								String sqlDeletefriend ="DELETE FROM friendship WHERE friend1 = ? AND friend2 = ?";
							
								PreparedStatement psDel = conn.prepareStatement(sqlDeletefriend);
								psDel.setLong(1, f1);
								psDel.setLong(2, f2);
								int rowsDeleted = psDel.executeUpdate();
								psDel.close();
							
								//Insert cooldown record into friend_requests (status = 'deleted')
								Timestamp currentTime = new Timestamp(System.currentTimeMillis());
								String sqlCooldownInsert ="INSERT INTO friend_requests(sender_id, receiver_id, response_timestamp, status1) VALUES (?, ?, ?, 'deleted')";
							
								PreparedStatement psCd = conn.prepareStatement(sqlCooldownInsert);
								psCd.setLong(1, myId);
								psCd.setLong(2, delfridnum);
								psCd.setTimestamp(3, currentTime);
								psCd.executeUpdate();
								psCd.close();
							
								System.out.println();
								if (rowsDeleted > 0) {
									System.out.println("You are no longer friends with " + friendUsername + ".");
									System.out.println("You must wait 5 minutes before sending a new request to this user.");
								} else {
									System.out.println("No friendship record found. Nothing was deleted.");
								}
							
								System.out.println();
								System.out.print("Press enter to go back...\n ");
								temp.nextLine();
								break;
								
								}
								continue;
								
							}
							if (s3 == 3){
								while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Incoming Friend Requests");
								System.out.println("--------------------------");
								System.out.println();
								System.out.println();

								String sqlViewfriendreq1 = "SELECT fr.request_timestamp, a.username FROM friend_requests fr, accounts a WHERE fr.receiver_id = ? AND fr.sender_id = a.account_id AND fr.status1 = 'pending' ORDER BY fr.request_timestamp DESC";
								PreparedStatement psVFriendreq1 = conn.prepareStatement(sqlViewfriendreq1);
								psVFriendreq1.setLong(1,  account_id);
								ResultSet rsVFriendreq1 = psVFriendreq1.executeQuery();
								Boolean hasAnyFriendreq1 = false;
								while(rsVFriendreq1.next()){
									hasAnyFriendreq1 = true;
									Timestamp reqtime1 = rsVFriendreq1.getTimestamp("request_timestamp");
									String sendername1 = rsVFriendreq1.getString("username");
									System.out.println(" From: " + sendername1 + " | Sent at: " + reqtime1.toString());
								}
								rsVFriendreq1.close();
								psVFriendreq1.close();
								if (!hasAnyFriendreq1) {
									System.out.println("You have no incoming friend requests at this moment.");
								}

								System.out.println();
								System.out.print("Type 'quit' to go back: ");
								String again = temp.nextLine().trim();
								if (again.equalsIgnoreCase("quit")) {
									break;      // leave Delete Friend submenu
								}
							}
								continue;
							}
							if(s3 == 4){
								while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Outgoing Friend Requests");
								System.out.println("--------------------------");
								System.out.println();
								System.out.println();

								String sqlViewfriendreq2 = "SELECT fr.request_timestamp, a.username FROM friend_requests fr, accounts a WHERE fr.sender_id = ? AND fr.receiver_id = a.account_id AND fr.status1 = 'pending' ORDER BY fr.request_timestamp DESC";
								PreparedStatement psVFriendreq2 = conn.prepareStatement(sqlViewfriendreq2);
								psVFriendreq2.setLong(1,  account_id);
								ResultSet rsVFriendreq2 = psVFriendreq2.executeQuery();
								Boolean hasAnyFriendreq2 = false;
								while(rsVFriendreq2.next()){
									hasAnyFriendreq2 = true;
									Timestamp reqtime2 = rsVFriendreq2.getTimestamp("request_timestamp");
									String receivername2 = rsVFriendreq2.getString("username");
									System.out.println(" To: " + receivername2 + " | Sent at: " + reqtime2.toString());
								}
								rsVFriendreq2.close();
								psVFriendreq2.close();
								if (!hasAnyFriendreq2) {
									System.out.println("You have no outgoing friend requests at this moment.");
								}

								System.out.println();
								System.out.println();
								System.out.print("Type Quit to go back: ");
								String quitter = temp.nextLine().trim();
								if (quitter.equalsIgnoreCase("quit")) {
									break;      
								}else{
									continue;
								}
							}
								continue;
							}
							if (s3 == 5){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Send Friend Request");
								System.out.println("--------------------");
								System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
								System.out.println("********************************************************************");
								System.out.println();
							
								while (true) {
									System.out.print("Enter the username of the user you want to send a friend request to: ");
									String friendusername243 = temp.nextLine().trim();
							
									// allow quitting back to Friends menu
									if (friendusername243.equalsIgnoreCase("quit")){
										break;
									}
							
									// empty username
									if (friendusername243.isEmpty()){
										System.out.println();
										System.out.println("Please enter a valid username.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
							
									//Check that username exists
									String sqlUserexistscheker = "SELECT account_id FROM accounts WHERE username = ?";
									PreparedStatement psfriendfinder1 = conn.prepareStatement(sqlUserexistscheker);
									psfriendfinder1.setString(1, friendusername243);
									ResultSet rsfriendfinder1 = psfriendfinder1.executeQuery();
							
									if (!rsfriendfinder1.next()){
										rsfriendfinder1.close();
										psfriendfinder1.close();
							
										System.out.println();
										System.out.println("Username not found. Please enter a valid username.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
							
									long friendaccountid123 = rsfriendfinder1.getLong("account_id");
									rsfriendfinder1.close();
									psfriendfinder1.close();
							
									// cannot send to yourself
									if (friendaccountid123 == account_id) {
										System.out.println();
										System.out.println("You cannot send a friend request to yourself.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
							
									long myId = account_id;
									long f1 = Math.min(myId, friendaccountid123);
									long f2 = Math.max(myId, friendaccountid123);
							
									// 2) Already friends?
									String sqlCheckalreadyfriends ="SELECT 1 FROM friendship WHERE friend1 = ? AND friend2 = ?";
									PreparedStatement psCAF = conn.prepareStatement(sqlCheckalreadyfriends);
									psCAF.setLong(1, f1);
									psCAF.setLong(2, f2);
									ResultSet rsCAF = psCAF.executeQuery();
							
									if (rsCAF.next()){
										rsCAF.close();
										psCAF.close();
							
										System.out.println();
										System.out.println("You are already friends with this user.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
									rsCAF.close();
									psCAF.close();
							
									//Existing pending request (either direction)?
									String sqlCheckPending ="SELECT 1 FROM friend_requests WHERE ((sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)) AND status1 = 'pending'";
									PreparedStatement psCP = conn.prepareStatement(sqlCheckPending);
									psCP.setLong(1, myId);
									psCP.setLong(2, friendaccountid123);
									psCP.setLong(3, friendaccountid123);
									psCP.setLong(4, myId);
									ResultSet rsCP = psCP.executeQuery();
							
									if (rsCP.next()){
										rsCP.close();
										psCP.close();
							
										System.out.println();
										System.out.println("There is already a pending friend request between you and this user.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
									rsCP.close();
									psCP.close();
							
									//Cooldown check: rejected/deleted in last 5 minutes
									long fiveMinutesMillis = 5L * 60L * 1000L;
									Timestamp threshold = new Timestamp(System.currentTimeMillis() - fiveMinutesMillis);
							
									String sqlCooldown ="SELECT response_timestamp FROM friend_requests WHERE ((sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)) AND (status1 = 'rejected' OR status1 = 'deleted')";
							
									PreparedStatement psCD = conn.prepareStatement(sqlCooldown);
									psCD.setLong(1, myId);
									psCD.setLong(2, friendaccountid123);
									psCD.setLong(3, friendaccountid123);
									psCD.setLong(4, myId);
									ResultSet rsCD = psCD.executeQuery();
							
									boolean cooling = false;
									while (rsCD.next()) {
										Timestamp resp = rsCD.getTimestamp("response_timestamp");
										if (resp != null && resp.after(threshold)) {
											cooling = true;
											break;
										}
									}
									rsCD.close();
									psCD.close();
							
									if (cooling) {
										System.out.println();
										System.out.println("You must wait 5 minutes before sending another request to this user.");
										try {
											Thread.sleep(1200);
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
										continue;
									}
							
									//Actually insert the friend request
									String sqlSendFR ="INSERT INTO friend_requests (sender_id, receiver_id, status1) VALUES (?, ?, 'pending')";
									PreparedStatement psSFR = conn.prepareStatement(sqlSendFR);
									psSFR.setLong(1, myId);
									psSFR.setLong(2, friendaccountid123);
									int cSFR = psSFR.executeUpdate();
									psSFR.close();
							
									System.out.println();
									if (cSFR > 0) {
										System.out.println("Friend request sent to " + friendusername243 + ".");
									} else {
										System.out.println("Error: could not send friend request. Loading...");
									}
							
									System.out.println();
									System.out.print("Press Enter to return back.....");
									temp.nextLine();
									break;
								}
							
								continue;  //back to the friends menu loop
							}
							

							if (s3 == 6){
								while(true){
								clearScreen();
								System.out.println();
								System.out.println();
								System.out.println("Accept / Reject Friend Requests");
								System.out.println("--------------------------------");
								System.out.println();
								System.out.println("Note: enter 'quit' for any of the inputs to return to previous page.");
								System.out.println("********************************************************************");
								System.out.println();

								String sqFrndreqincoming = "SELECT fr.request_timestamp, a.username FROM friend_requests fr, accounts a WHERE fr.receiver_id = ? AND fr.sender_id = a.account_id AND fr.status1 = 'pending' ORDER BY fr.request_timestamp DESC";
								PreparedStatement psFrndreqincoming1 = conn.prepareStatement(sqFrndreqincoming);
								psFrndreqincoming1.setLong(1,  account_id);
								ResultSet rsFrndreqincoming1 = psFrndreqincoming1.executeQuery();
								Boolean hasAnyFrndreqincoming1 = false;
								while(rsFrndreqincoming1.next()){
									hasAnyFrndreqincoming1 = true;
									Timestamp reqtime3 = rsFrndreqincoming1.getTimestamp("request_timestamp");
									String sendername3 = rsFrndreqincoming1.getString("username");
									System.out.println( "From: " + sendername3 + " | Sent at: " + reqtime3.toString());
								}
								rsFrndreqincoming1.close();
								psFrndreqincoming1.close();

								if(!hasAnyFrndreqincoming1){
									System.out.println("You have no incoming friend requests at this moment.");
									System.out.println();
									System.out.print("Type Quit to go back: ");
									String comeout = temp.nextLine().trim();
									if (comeout.equalsIgnoreCase("quit")){
										break;
									}
									else{
										continue;
									}
								}

								System.out.println();
								System.out.print("Enter the username of the friend request you want to respond to: ");
								String frndreqrespondername = temp.nextLine().trim();
								if (frndreqrespondername.equalsIgnoreCase("quit")){
									break;
								}
								if(frndreqrespondername.isEmpty()){
									System.out.println();
									System.out.println("Please enter a valid username.");
									//wait 2 seconds to simulate app loading
									try{
										Thread.sleep(1200);
									} catch(InterruptedException e){
										e.printStackTrace();
									}
									continue;
								}

								String sqlFriendrequestrespondercheck = "SELECT fr.sender_id FROM friend_requests fr, accounts a WHERE fr.receiver_id = ? AND fr.sender_id = a.account_id AND a.username = ? AND fr.status1 = 'pending'";
								PreparedStatement psFriendrequestrespondercheck1 = conn.prepareStatement(sqlFriendrequestrespondercheck);
								psFriendrequestrespondercheck1.setLong(1, account_id);
								psFriendrequestrespondercheck1.setString(2, frndreqrespondername);
								ResultSet rsFriendrequestrespondercheck1 = psFriendrequestrespondercheck1.executeQuery();
								if (!rsFriendrequestrespondercheck1.next()){
									rsFriendrequestrespondercheck1.close();
									psFriendrequestrespondercheck1.close();
									System.out.println();
									System.out.println("No pending friend request from this username found. Loading...");
									//wait 2 seconds to simulate app loading
									try{
										Thread.sleep(1200);
									} catch(InterruptedException e){
										e.printStackTrace();
									}
									System.out.print("Press Enter to continue...");
									temp.nextLine();
									continue;
								}
								long frndreqidnum = rsFriendrequestrespondercheck1.getLong("sender_id");
								rsFriendrequestrespondercheck1.close();
								psFriendrequestrespondercheck1.close();

								System.out.println();
								System.out.print("Enter 1 to Accept or 2 to Reject the friend request: ");
								String frndreqresponseinput = temp.nextLine().trim();
								if (frndreqresponseinput.equalsIgnoreCase("quit")){
									break;
								}
								int frndreqresponsechoice;
								frndreqresponsechoice = Integer.parseInt(frndreqresponseinput);
								if (frndreqresponsechoice != 1 && frndreqresponsechoice != 2){
									System.out.println();
									System.out.println("Invalid input. Loading...");
									//wait 2 seconds to simulate app loading
									try{
										Thread.sleep(1200);
									} catch(InterruptedException e){
										e.printStackTrace();
									}
									continue;
								}
								Timestamp currentTime = new Timestamp(System.currentTimeMillis());

								if (frndreqresponsechoice == 1){
									long frndrequestsenderid = account_id;
									long frnd1 = Math.min(frndrequestsenderid, frndreqidnum);
									long frnd2 = Math.max(frndrequestsenderid, frndreqidnum);

									String sqladdfriends = "INSERT INTO friendship (friend1, friend2) VALUES (?, ?)";
									PreparedStatement psaddfriends1 = conn.prepareStatement(sqladdfriends);
									psaddfriends1.setLong(1, frnd1);
									psaddfriends1.setLong(2, frnd2);
									psaddfriends1.executeUpdate();
									psaddfriends1.close();

									String sqlupdatefriendrequeststatus = "UPDATE friend_requests SET status1 = 'accepted', response_timestamp = ? WHERE sender_id = ? AND receiver_id = ?  AND status1 = 'pending'";
									PreparedStatement psupdatefriendrequeststatus1 = conn.prepareStatement(sqlupdatefriendrequeststatus);
									psupdatefriendrequeststatus1.setTimestamp(1, currentTime);
									psupdatefriendrequeststatus1.setLong(2, frndreqidnum);
									psupdatefriendrequeststatus1.setLong(3, account_id);
									psupdatefriendrequeststatus1.executeUpdate();
									psupdatefriendrequeststatus1.close();

									System.out.println("You are friends with " + frndreqrespondername + " now!");
								} else if (frndreqresponsechoice == 2){
									String sqlupdatefriendrequeststatus2 = "UPDATE friend_requests SET status1 = 'rejected', response_timestamp = ? WHERE sender_id = ? AND receiver_id = ? AND status1 = 'pending'";
									PreparedStatement psupdatefriendrequeststatus2 = conn.prepareStatement(sqlupdatefriendrequeststatus2);
									psupdatefriendrequeststatus2.setTimestamp(1, currentTime);
									psupdatefriendrequeststatus2.setLong(2, frndreqidnum);
									psupdatefriendrequeststatus2.setLong(3, account_id);
									psupdatefriendrequeststatus2.executeUpdate();
									psupdatefriendrequeststatus2.close();

									System.out.println("You have rejected the friend request from " + frndreqrespondername + ".");
									System.out.println("You have to wait till 5 mins before you can send another friend request to this user.");
								}
								System.out.println();
								System.out.print("Type 'quit' to go back: ");
								String again = temp.nextLine().trim();
								if (again.equalsIgnoreCase("quit")) {
									break;      //leave Delete Friend submenu
								}

							}
							continue;
						}
						}
					}

					//user chooses Transactions
					if(homeSelection == 4){
						while(true){
							clearScreen();
							System.out.println();
							System.out.println();
							System.out.println("Transactions");
							System.out.println("------------");
							System.out.println();
							System.out.println();
							System.out.println("Transaction Id  |  Transaction Type  |    Amount  |    Date");
							System.out.println("-----------------------------------------------------------------");

							//print the transactions
							String sql4 = "SELECT ta.transaction_id, ta.transaction_type, ta.amount, ta.date1 FROM transaction ta JOIN records rt ON ta.transaction_id = rt.transaction_id WHERE rt.account_id = ? ORDER BY ta.date1 DESC";
							PreparedStatement ps4 = conn.prepareStatement(sql4);
							ps4.setLong(1, account_id);
							ResultSet rs4 = ps4.executeQuery();
							boolean hasAny3 = false;
							while(rs4.next()){
    							hasAny3 = true;
    							long tid1 = rs4.getLong("transaction_id");
        						String transtype = rs4.getString("transaction_type");
        						double amt1 = rs4.getDouble("amount");
        						Timestamp d1 = rs4.getTimestamp("date1");
								System.out.println(tid1 + " | " + transtype + " | $" + amt1 + " | " + d1.toString());

							}
							rs4.close();
							ps4.close();
							if (!hasAny3) {
        						System.out.println();
        						System.out.println("There are no transactions at this moment.");
    						}

							//wait for user to go back
							System.out.println();
							System.out.println();
							System.out.println("Press Enter to go back...");
							temp.nextLine();
    						break;
						}
					}
					//end of homepage menu option checking

					
				}

				//user wants to logout and go back to start page
				if(goBackToStartPage){
					continue;
				}

				
			}//end of login/register loop

			






















			//Below was here before
			// Create a statement object
			//
			//
			//stmt = conn.createStatement();

			//
			// Create SQL statement to insert a tuple
			//
			//
			//String sqlInsert = "INSERT INTO testtbl (name, value) " +
				//"VALUES ('world', 1024);";
			//stmt.executeUpdate(sqlInsert);
			//System.out.println("Tuple inserted successfully");

			//
			// Create SQL statement to query all tuples
			//
			//
			//String sqlSelect = "SELECT name, value FROM testtbl;";
			//ResultSet rs = stmt.executeQuery(sqlSelect);

			//
			// Print the queried tuples
			//
			//
			//System.out.println("Table testtbl contains the following tuples:\nname \tvalue");
			//while (rs.next()) {
				//String name = rs.getString("name");
				//int value = rs.getInt("value");
				//System.out.println(name + " \t" + value);
			//}
			//rs.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getClass().getName() + ": " + e.getMessage());
			System.exit(1);
		} finally {
			try {
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();
			
				System.out.println("Disconnected from the database");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
