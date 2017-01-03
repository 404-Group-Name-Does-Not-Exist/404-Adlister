<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer>
    <section class="footer-Content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="0">
                    <div class="widget">
                        <h3 class="block-title">About us</h3>
                        <div class="textwidget">
                            <p>Adlister is a not-for-profit local classifieds service that allows users to buy and sell their unwanted stuff, look for jobs or qualified employee candidates, and find that perfect apartment or house--all without paying a dime in fees or membership costs.</p>
                            <%
                                if (request.getSession().getAttribute("user") == null)
                                {
                            %>
                            <p>Please feel free to register or login to create a listing and begin your adventure with Adlister today!</p>
                            <%
                            } else {
                            %>
                            <p>Enjoy Adlister!</p>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="0.5">
                    <div class="widget">
                        <h3 class="block-title">Useful Links</h3>
                        <ul class="menu">
                            <%
                                if (request.getSession().getAttribute("user") == null)
                                {
                            %>
                            <li><a href="/index.jsp">Home</a></li>
                            <li><a href="/ads">Ads</a></li>
                            <li><a href="/login">Login</a></li>
                            <li><a href="/register">Register</a></li>
                            <li><a target="_blank" href="http://charliepage.com/four-steps-to-writing-a-great-classified-ad/">Four Steps to Creating a Perfect Ad</a></li>
                            <li><a target="_blank" href="https://www.webroot.com/us/en/home/resources/tips/online-shopping-banking/shopping-how-do-i-safely-use-online-classifieds-sites-to-sell-something">Buy/sell Safety Tips</a></li>
                            <%
                            } else {
                            %>
                            <li><a href="/index.jsp">Home</a></li>
                            <li><a href="/ads">Ads</a></li>
                            <li><a href="/profile">Profile</a></li>
                            <li><a href="/ads/create">Create Ad</a></li>
                            <li><a target="_blank" href="http://charliepage.com/four-steps-to-writing-a-great-classified-ad/">Four Steps to Creating a Perfect Ad</a></li>
                            <li><a target="_blank" href="https://www.webroot.com/us/en/home/resources/tips/online-shopping-banking/shopping-how-do-i-safely-use-online-classifieds-sites-to-sell-something">Buy/sell Safety Tips</a></li>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div id="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="site-info pull-left">
                        <p>All copyrights reserved @ 2016 - AdLister</p>
                    </div>
                    <div class="bottom-social-icons social-icon pull-right">
                        <a class="anthony" target="_blank" href="https://www.linkedin.com/in/anthony-fortney-b56a40131">AF</a>
                        <a class="josh" target="_blank" href="https://www.linkedin.com/profile/view?id=AA4AABGPdRUBQAIAnZfUlj7kkWDaMsGa3vZn7nc&authType=name&authToken=mc0J&goback=&trk=abook_conn">JF</a>
                        <a class="patrick" target="_blank" href="https://www.linkedin.com/in/patrick-woolard-1505a039">PW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
