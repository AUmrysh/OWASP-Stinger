<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Basic Text Entry Validation using POST</title>
<%@ include file="/templates/styles.jsp" %>
<body>

    <!-- Navbar -->
    <%@ include file="/templates/header.jsp" %>

    <!-- Sidebar -->
    <%@ include file="/templates/sidebar.jsp" %>

    <!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
    <div class="w3-main" style="margin-left:250px">

        <div class="w3-row w3-padding-64">
            <div class="w3-twothird w3-container">
                <h1 class="w3-text-teal">POST Stinger Input Validation Tests</h1>
                <p>
                    The following form submissions demonstrate how each of the default filters work against a given input
                </p>
            </div>
        </div>

        <div class="w3-row">
            <div class="w3-twothird w3-container">
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the JSESSIONID filter, which should apply the filter:<br>
                        ^[A-F0-9]{32}$</p>
                    <fieldset>
                        <legend>Enter a JSESSION ID:</legend>
                        <input type = "text" name = "JSESSIONID_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the safetext filter, which should apply the filter:<br>
                        ^[a-zA-Z0-9\s.\-]+$</p>
                    <fieldset>
                        <legend>Entered text:</legend>
                        <input type = "text" name = "safetext_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the url filter, which should apply the filter:<br>
                        ^((((https?|ftps?|gopher|telnet|nntp)://)|(mailto:|news:))(%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@&amp;=+$,A-Za-z0-9])+)([).!';/?:,][[:blank:]])?$</p>
                    <fieldset>
                        <legend>Enter a URL:</legend>
                        <input type = "text" name = "url_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the email filter, which should apply the filter:<br>
                        ^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$</p>
                    <fieldset>
                        <legend>Enter an email:</legend>
                        <input type = "text" name = "email_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the digitwords filter, which should apply the filter:<br>
                        ^(zero|one|two|three|four|five|six|seven|eight|nine)$</p>
                    <fieldset>
                        <legend>Enter a digit spelled out between zero and nine:</legend>
                        <input type = "text" name = "digitwords_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the zip filter, which should apply the filter:<br>
                        ^\\d{5}(-\\d{4})?$</p>
                    <fieldset>
                        <legend>Enter a zip code:</legend>
                        <input type = "text" name = "zip_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the phone number filter, which should apply the filter:<br>
                        ^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$ </p>
                    <fieldset>
                        <legend>Enter a phone number:</legend>
                        <input type = "text" name = "phone_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the two letter US State filter, which should apply the filter:<br>
                        ^(AL|AK|AS|AZ|AR|CA|CO|CT|DE|DC|FM|FL|GA|GU|HI|ID|IL|IN|IA|KS|KY|LA|ME|MH|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|MP|OH|OK|OR|PW|PA|PR|RI|SC|SD|TN|TX|UT|VT|VI|VA|WA|WV|WI|WY)$
                    </p>
                    <fieldset>
                        <legend>Enter a two letter US State:</legend>
                        <input type = "text" name = "state_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the date filter, which should apply the filter:<br>
                        ^(?:(?:(?:0?[13578]|1[02])(\/|-|\.)31)\1|(?:(?:0?[1,3-9]|1[0-2])(\/|-|\.)(?:29|30)\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:0?2(\/|-|\.)29\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:(?:0?[1-9])|(?:1[0-2]))(\/|-|\.)(?:0?[1-9]|1\d|2[0-8])\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$
                    </p>
                    <fieldset>
                        <legend>Enter a date:</legend>
                        <input type = "text" name = "date_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the credit card filter, which should apply the filter:<br>
                        ^((4\d{3})|(5[1-5]\d{2})|(6011))-?\d{4}-?\d{4}-?\d{4}|3[4,7]\d{13}$</p>
                    <fieldset>
                        <legend>Enter a credit card number:</legend>
                        <input type = "text" name = "creditcard_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the password filter, which should apply the filter:<br>
                        ^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$</p>
                    <fieldset>
                        <legend>Enter a password using characters TBD:</legend>
                        <input type = "text" name = "password_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the social security number filter, which should apply the filter:<br>
                        ^\d{3}-\d{2}-\d{4}$</p>
                    <fieldset>
                        <legend>Enter a Social Security Number:</legend>
                        <input type = "text" name = "ssn_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
                <form action = "postOutro.jsp" method = "POST">
                    <p>This is an example of the word-month filter, which shousld apply the filter:<br>
                        ^(Jan|Feb|Mar|Apr|May|Jun|Jul|Apr|Sep|Oct|Nov|Dec)$</p>
                    <fieldset>
                        <legend>Enter a month name:</legend>
                        <input type = "text" name = "month_box">
                        <input type = "submit" value = "Submit" />
                    </fieldset>
                </form>
            </div>

        </div>

        <!-- FOOTER -->
        <%@ include file="/templates/footer.jsp" %>

        <!-- Pagination -->
        <div class="w3-center w3-padding-32">
            <div class="w3-bar">
                <a class="w3-button w3-black" href="#">1</a>
                <a class="w3-button w3-hover-black" href="#">2</a>
                <a class="w3-button w3-hover-black" href="#">3</a>
                <a class="w3-button w3-hover-black" href="#">4</a>
                <a class="w3-button w3-hover-black" href="#">5</a>
                <a class="w3-button w3-hover-black" href="#">»</a>
            </div>
        </div>



        <!-- END MAIN -->
    </div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>

</body>
</html>