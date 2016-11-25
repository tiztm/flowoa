<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <script src="/jslib/jquery.1.7.min.js"></script>
    <script src="/jslib/jquery.masonry.min.js"></script>
    <script src="/jslib/jquery.quicksearch.js"></script>

    <link href="/csslib/default.css" rel="stylesheet">

</head>
<body class="cheat-detail">

<%--<div id="more-list-container">--%>
    <%--<a href="javascript:void(0)">More &raquo;</a>--%>
    <%--<ul id="nav-more-list">--%>
        <%--<li><a href="/git" title="Git Cheat Sheet">Git</a></li>--%>
        <%--<li><a href="/svn" title="SVN Cheat Sheet">SVN</a></li>--%>
        <%--<li><a href="/mysql" title="MySQL Cheat Sheet">MySQL</a></li>--%>
        <%--<li><a href="/regex" title="Regular Expression Cheat Sheet">Regex</a></li>--%>
        <%--<li><a href="/linux" title="Linux Command Line Cheat Sheet">Linux</a></li>--%>
        <%--<li><a href="/html" title="HTML Cheat Sheet">HTML</a></li>--%>
        <%--<li><a href="/html-dom" title="HTML-DOM Cheat Sheet">HTML-DOM</a></li>--%>
        <%--<li><a href="/mod_rewrite" title="mod_rewrite Cheat Sheet">mod_rewrite</a></li>--%>
        <%--<li><a href="/#more" id="">Even More &raquo;</a></li>--%>
    <%--</ul>--%>
<%--</div>--%>

<div id="navbar">
    <a id="logo" href="/">API速查</a>

    <ul id="navlist" class="nav">
        <c:forEach var="apis" items="${apiTypeList}" >
            <li><a href="/${apis.name}" >${apis.name}</a></li>
        </c:forEach>

    </ul>
</div>



<div class="content">
    <div class="board ">
        <h2 class="board-title">Resource</h2>
        <div class="board-card">
            <h3 class="board-card-title">Online</h3>
            <ul>
                <li><a href="http://www.mysql.com/">Official Website</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Download</h3>
            <ul>
                <li><a href="/static/cs/mysql_cheat_sheet.pdf">MySQL Cheat Sheet [.pdf]</a></li>
                <li><a href="/static/cs/MySQL_QuickRef.pdf">MySQL Database Quick Reference [.pdf]</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Related</h3>
            <ul>
                <li><a href="/db2" title="DB2 Cheat Sheet">DB2</a></li>
                <li><a href="/oracle" title="Oracle Cheat Sheet">Oracle</a></li>
                <li><a href="/postgresql" title="PostgreSQL Cheat Sheet">PostgreSQL</a></li>
                <li><a href="/sql" title="SQL Cheat Sheet">SQL</a></li>
                <li><a href="/sqlite" title="SQLite Cheat Sheet">SQLite</a></li>
                <li><a href="/sybase" title="Sybase Cheat Sheet">Sybase</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Data Types</h2>
        <div class="board-card">
            <h3 class="board-card-title">Types</h3>
            <ul>
                <li>CHAR</li>
                <li class="tip">String (0 - 255)</li>
                <li>VARCHAR</li>
                <li class="tip">String (0 - 255)</li>
                <li>TINYTEXT</li>
                <li class="tip">String (0 - 255)</li>
                <li>TEXT</li>
                <li class="tip">String (0 - 65535)</li>
                <li>BLOB</li>
                <li class="tip">String (0 - 65535)</li>
                <li>MEDIUMTEXT</li>
                <li class="tip">String (0 - 16777215)</li>
                <li>MEDIUMBLOB</li>
                <li class="tip">String (0 - 16777215)</li>
                <li>LONGTEXT</li>
                <li class="tip">String (0 - 429496-7295)</li>
                <li>LONGBLOB</li>
                <li class="tip">String (0 - 429496-7295)</li>
                <li>TINYINT x</li>
                <li class="tip">Integer (-128 to 127)</li>
                <li>SMALLINT x</li>
                <li class="tip">Integer (-32768 to 32767)</li>
                <li>MEDIUMINT x</li>
                <li class="tip">Integer (-8388608 to 8388607)</li>
                <li>INT x</li>
                <li class="tip">Integer (-2147-483648 to 214748-3647)</li>
                <li>BIGINT x</li>
                <li class="tip">Integer (-9223-372-036-854-775808 to 922337-203-685-477-5807)</li>
                <li>FLOAT</li>
                <li class="tip">Decimal (precise to 23 digits)</li>
                <li>DOUBLE</li>
                <li class="tip">Decimal (24 to 53 digits)</li>
                <li>DECIMAL</li>
                <li class="tip">"-DOU-BLE-" stored as string</li>
                <li>DATE</li>
                <li class="tip">YYYY-MM-DD</li>
                <li>DATETIME</li>
                <li class="tip">YYYY-MM-DD HH:MM:SS</li>
                <li>TIMESTAMP</li>
                <li class="tip">YYYYMM-DDH-HMMSS</li>
                <li>TIME</li>
                <li class="tip">HH:MM:SS</li>
                <li>ENUM</li>
                <li class="tip">One of preset options</li>
                <li>SET</li>
                <li class="tip">Selection of preset options</li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Operators</h2>
        <div class="board-card">
            <h3 class="board-card-title">Assignment Operators</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html#operator_assign-equal" title="Assign a value (as part of a SET statement, or as part of the SET clause in an UPDATE statement)">=</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html#operator_assign-value" title="Assign a value">:=</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Logical Operators</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html#operator_and" title="Logical AND">AND, &amp;&amp;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html#operator_not" title="Negates value">NOT, !</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html#operator_or" title="Logical OR">||, OR</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html#operator_xor" title="Logical XOR">XOR</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Comparison Operators</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_between" title="Check whether a value is within a range of values">BETWEEN ... AND ... </a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html#operator_binary" title="Cast a string to a binary string">BINARY</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_bitwise-and" title="Bitwise AND">&amp;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_bitwise-invert" title="Invert bits">~</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_bitwise-or" title="Bitwise OR">|</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_bitwise-xor" title="Bitwise XOR">^</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html#operator_case" title="Case operator">CASE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_div" title="Integer division">DIV</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_divide" title="Division operator">/</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_equal-to" title="NULL-safe equal to operator">&lt;=&gt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_equal" title="Equal operator">=</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_greater-than-or-equal" title="Greater than or equal operator">&gt;=</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_greater-than" title="Greater than operator">&gt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_is-not-null" title="NOT NULL value test">IS NOT NULL</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_is-not" title="Test a value against a boolean">IS NOT</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_is-null" title="NULL value test">IS NULL</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_is" title="Test a value against a boolean">IS</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_left-shift" title="Left shift">&lt;&lt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_less-than-or-equal" title="Less than or equal operator">&lt;=</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_less-than" title="Less than operator">&lt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_like" title="Simple pattern matching">LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_minus" title="Minus operator">-</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_mod" title="Modulo operator">% or MOD</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_not-between" title="Check whether a value is not within a range of values">NOT BETWEEN ... AND ...</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html#operator_not-equal" title="Not equal operator">!=, &lt;&gt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_not-like" title="Negation of simple pattern matching">NOT LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_not-regexp" title="Negation of REGEXP">NOT REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_plus" title="Addition operator">+</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Pattern matching using regular expressions">REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html#operator_right-shift" title="Right shift">&gt;&gt;</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Synonym for REGEXP">RLIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#operator_sounds-like" title="Compare sounds">SOUNDS LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_times" title="Multiplication operator">*</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_unary-minus" title="Change the sign of the argument">-</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">String</h2>
        <div class="board-card">
            <h3 class="board-card-title">String Comparison</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_like" title="Simple pattern matching">LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_not-like" title="Negation of simple pattern matching">NOT LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#function_strcmp" title="Compare two strings">STRCMP()</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Regular Expressions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_not-regexp" title="Negation of REGEXP">NOT REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Pattern matching using regular expressions">REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Synonym for REGEXP">RLIKE</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">String Functions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_ascii" title="Return numeric value of left-most character">ASCII()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_bin" title="Return a string representation of the argument">BIN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_bit-length" title="Return length of argument in bits">BIT_LENGTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_char-length" title="Return number of characters in argument">CHAR_LENGTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_char" title="Return the character for each integer passed">CHAR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_character-length" title="A synonym for CHAR_LENGTH()">CHARACTER_LENGTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_concat-ws" title="Return concatenate with  separator">CONCAT_WS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_concat" title="Return concatenated string">CONCAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_elt" title="Return string at index number">ELT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_export-set" title="Return a string such that for every bit set in the value  bits, you get an on string and for every unset bit, you get an off string">EXPORT_SET()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_field" title="Return the index (position) of the first argument  in the subsequent arguments">FIELD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_find-in-set" title="Return the index position of  the first argument within the second argument">FIND_IN_SET()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_format" title="Return a number formatted to specified number of decimal places">FORMAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_hex" title="Return a hexadecimal representation of a  decimal or string value">HEX()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_insert" title="Insert a substring at the specified position up to  the specified number of characters">INSERT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_instr" title="Return the index of the first occurrence of substring">INSTR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_lcase" title="Synonym for LOWER() ">LCASE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_left" title="Return the leftmost number of characters as specified">LEFT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_length" title="Return the length of a string in bytes">LENGTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_like" title="Simple pattern matching">LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_load-file" title="Load the named file">LOAD_FILE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_locate" title="Return the position of the first occurrence  of substring">LOCATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_lower" title="Return the argument in lowercase ">LOWER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_lpad" title="Return the string argument, left-padded  with the specified string">LPAD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_ltrim" title="Remove leading spaces">LTRIM()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_make-set" title="Return a set of comma-separated strings  that have the corresponding bit in bits set">MAKE_SET()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/fulltext-search.html#function_match" title="Perform full-text search">MATCH</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_mid" title="Return a substring starting from the specified position">MID()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#operator_not-like" title="Negation of simple pattern matching">NOT LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_not-regexp" title="Negation of REGEXP">NOT REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_octet-length" title="A synonym for LENGTH()">OCTET_LENGTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_ord" title="Return character code for leftmost character of the  argument">ORD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_position" title="A synonym for LOCATE()">POSITION()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_quote" title="Escape the argument for use in an SQL statement">QUOTE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Pattern matching using regular expressions">REGEXP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_repeat" title="Repeat a string the specified number of times">REPEAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_replace" title="Replace occurrences of a specified string">REPLACE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_reverse" title="Reverse the characters in a string">REVERSE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_right" title="Return the specified rightmost number of characters">RIGHT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/regexp.html#operator_regexp" title="Synonym for REGEXP">RLIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_rpad" title="Append string the specified number of times">RPAD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_rtrim" title="Remove trailing spaces">RTRIM()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_soundex" title="Return a soundex string">SOUNDEX()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#operator_sounds-like" title="Compare sounds">SOUNDS LIKE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_space" title="Return a string of the specified number of spaces">SPACE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html#function_strcmp" title="Compare two strings">STRCMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_substr" title="Return the substring as specified">SUBSTR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_substring-index" title="Return a substring from a  string before the specified number of occurrences of the delimiter">SUBSTRING_INDEX()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_substring" title="Return the substring as specified">SUBSTRING()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_trim" title="Remove leading and trailing spaces">TRIM()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_ucase" title="Synonym for UPPER()">UCASE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_unhex" title="Convert each pair of hexadecimal digits  to a character">UNHEX()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/string-functions.html#function_upper" title="Convert to uppercase">UPPER()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Numeric</h2>
        <div class="board-card">
            <h3 class="board-card-title">Arithmetic Operators</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_div" title="Integer division">DIV</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_divide" title="Division operator">/</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_minus" title="Minus operator">-</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_mod" title="Modulo operator">% or MOD</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_plus" title="Addition operator">+</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_times" title="Multiplication operator">*</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html#operator_unary-minus" title="Change the sign of the argument">-</a></li>
            </ul>
        </div>
        <div class="board-card">
            <h3 class="board-card-title">Mathematical Functions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_abs" title="Return the absolute value">ABS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_acos" title="Return the arc cosine">ACOS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_asin" title="Return the arc sine">ASIN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_atan2" title="Return the arc tangent of the two arguments">ATAN2(), ATAN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_atan" title="Return the arc tangent">ATAN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_ceil" title="Return the smallest integer value not less than  the argument">CEIL()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_ceiling" title="Return the smallest integer value not less than  the argument">CEILING()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_conv" title="Convert numbers between different number bases">CONV()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_cos" title="Return the cosine">COS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_cot" title="Return the cotangent">COT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_crc32" title="Compute a cyclic redundancy check value">CRC32()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_degrees" title="Convert radians to degrees">DEGREES()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_exp" title="Raise to the power of">EXP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_floor" title="Return the largest integer value not greater than  the argument">FLOOR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_ln" title="Return the natural logarithm of the argument">LN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_log10" title="Return the base-10 logarithm of the argument">LOG10()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_log2" title="Return the base-2 logarithm of the argument">LOG2()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_log" title="  Return the natural logarithm of the first argument  ">LOG()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_mod" title="Return the remainder">MOD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_oct" title="Return an octal representation of a decimal  number">OCT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_pi" title="Return the value of pi">PI()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_pow" title="Return the argument raised to the specified power">POW()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_power" title="Return the argument raised to the specified power">POWER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_radians" title="Return argument converted to radians">RADIANS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_rand" title="Return a random floating-point value">RAND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_round" title="Round the argument">ROUND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_sign" title="Return the sign of the argument">SIGN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_sin" title="Return the sine of the argument">SIN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_sqrt" title="Return the square root of the argument">SQRT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_tan" title="Return the tangent of the argument">TAN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_truncate" title="Truncate to specified number of decimal places">TRUNCATE()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Date</h2>
        <div class="board-card">
            <h3 class="board-card-title">Date and Time</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_adddate" title="Add time values (intervals) to a date value">ADDDATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_addtime" title="Add time">ADDTIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_convert-tz" title="Convert from one timezone to another">CONVERT_TZ()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_curdate" title="Return the current date">CURDATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_current-date" title="Synonyms for CURDATE()">CURRENT_DATE(), CURRENT_DATE</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_current-time" title="Synonyms for CURTIME()">CURRENT_TIME(), CURRENT_TIME</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_current-timestamp" title="Synonyms for NOW()">CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_curtime" title="Return the current time">CURTIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_date-add" title="Add time values (intervals) to a date value">DATE_ADD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_date-format" title="Format date as specified">DATE_FORMAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_date-sub" title="Subtract a time value (interval) from a date">DATE_SUB()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_date" title="Extract the date part of a date or datetime expression">DATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_datediff" title="Subtract two dates">DATEDIFF()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_day" title="Synonym for DAYOFMONTH()">DAY()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_dayname" title="Return the name of the weekday">DAYNAME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_dayofmonth" title="Return the day of the month (0-31)">DAYOFMONTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_dayofweek" title="Return the weekday index of the argument">DAYOFWEEK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_dayofyear" title="Return the day of the year (1-366)">DAYOFYEAR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_extract" title="Extract part of a date">EXTRACT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_from-days" title="Convert a day number to a date">FROM_DAYS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_from-unixtime" title="Format UNIX timestamp as a date">FROM_UNIXTIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_get-format" title="Return a date format string">GET_FORMAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_hour" title="Extract the hour">HOUR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_last-day" title="Return the last day of the month for the argument">LAST_DAY</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_localtime" title="Synonym for NOW()">LOCALTIME(), LOCALTIME</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_localtimestamp" title="Synonym for NOW()">LOCALTIMESTAMP, LOCALTIMESTAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_makedate" title="Create a date from the year and day of year">MAKEDATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_maketime" title="MAKETIME()">MAKETIME</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_microsecond" title="Return the microseconds from argument">MICROSECOND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_minute" title="Return the minute from the argument">MINUTE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_month" title="Return the month from the date passed">MONTH()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_monthname" title="Return the name of the month">MONTHNAME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_now" title="Return the current date and time">NOW()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_period-add" title="Add a period to a year-month">PERIOD_ADD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_period-diff" title="Return the number of months between periods">PERIOD_DIFF()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_quarter" title="Return the quarter from a date argument">QUARTER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_sec-to-time" title="Converts seconds to 'HH:MM:SS' format">SEC_TO_TIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_second" title="Return the second (0-59)">SECOND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_str-to-date" title="Convert a string to a date">STR_TO_DATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_subdate" title="A synonym for DATE_SUB() when invoked with three arguments">SUBDATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_subtime" title="Subtract times">SUBTIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_sysdate" title="Return the time at which the function executes">SYSDATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_time-format" title="Format as time">TIME_FORMAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_time-to-sec" title="Return the argument converted to seconds">TIME_TO_SEC()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_time" title="Extract the time portion of the expression passed">TIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_timediff" title="Subtract time">TIMEDIFF()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_timestamp" title="With a single argument, this function returns the date or  datetime expression; with two arguments, the sum of the arguments">TIMESTAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_timestampadd" title="Add an interval to a datetime expression">TIMESTAMPADD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_timestampdiff" title="Subtract an interval from a datetime expression">TIMESTAMPDIFF()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_to-days" title="Return the date argument converted to days">TO_DAYS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_to-seconds" title="Return the date or datetime argument converted to seconds since  Year 0">TO_SECONDS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_unix-timestamp" title="Return a UNIX timestamp">UNIX_TIMESTAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_utc-date" title="Return the current UTC date">UTC_DATE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_utc-time" title="Return the current UTC time">UTC_TIME()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_utc-timestamp" title="Return the current UTC date and time">UTC_TIMESTAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_week" title="Return the week number">WEEK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_weekday" title="Return the weekday index">WEEKDAY()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_weekofyear" title="Return the calendar week of the date (0-53)">WEEKOFYEAR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_year" title="Return the year">YEAR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html#function_yearweek" title="Return the year and week">YEARWEEK()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Group</h2>
        <div class="board-card">
            <h3 class="board-card-title">GROUP BY Functions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_avg" title="Return the average value of the argument">AVG()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_bit-and" title="Return bitwise and">BIT_AND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_bit-or" title="Return bitwise or">BIT_OR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_bit-xor" title="Return bitwise xor">BIT_XOR()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_count-distinct" title="Return the count of a number of different values">COUNT(DISTINCT)</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_count" title="Return a count of the number of rows returned">COUNT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_group-concat" title="Return a concatenated string">GROUP_CONCAT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_max" title="Return the maximum value">MAX()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_min" title="Return the minimum value">MIN()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_std" title="Return the population standard deviation">STD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_stddev-pop" title="Return the population standard deviation">STDDEV_POP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_stddev-samp" title="Return the sample standard deviation">STDDEV_SAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_stddev" title="Return the population standard deviation">STDDEV()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_sum" title="Return the sum">SUM()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_var-pop" title="Return the population standard variance">VAR_POP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_var-samp" title="Return the sample variance">VAR_SAMP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html#function_variance" title="Return the population standard variance">VARIANCE()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Information</h2>
        <div class="board-card">
            <h3 class="board-card-title">Information Functions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_benchmark" title="Repeatedly execute an expression">BENCHMARK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_charset" title="Return the character set of the argument">CHARSET()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_coercibility" title="Return the collation coercibility value of the string  argument">COERCIBILITY()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_collation" title="Return the collation of the string argument">COLLATION()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_connection-id" title="Return the connection ID (thread ID)  for the connection">CONNECTION_ID()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_current-user" title="The authenticated user name and host name">CURRENT_USER(), CURRENT_USER</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_database" title="Return the default (current) database name">DATABASE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_found-rows" title="For a SELECT with a LIMIT clause, the  number of rows that would be returned were there no LIMIT clause">FOUND_ROWS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_last-insert-id" title="Value of the AUTOINCREMENT column  for the last INSERT">LAST_INSERT_ID()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_row-count" title="The number of rows  updated">ROW_COUNT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_schema" title="A synonym for DATABASE()">SCHEMA()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_session-user" title="Synonym for USER()">SESSION_USER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_system-user" title="Synonym for USER()">SYSTEM_USER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_user" title="The user name and host name provided by the client">USER()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/information-functions.html#function_version" title="Returns a string that indicates the MySQL server version">VERSION()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Encrypt</h2>
        <div class="board-card">
            <h3 class="board-card-title">Encryption and Compression</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_aes-decrypt" title="Decrypt using AES">AES_DECRYPT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_aes-encrypt" title="Encrypt using AES">AES_ENCRYPT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_compress" title="Return result as a binary string">COMPRESS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_decode" title="Decodes a string encrypted using ENCODE()">DECODE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_des-decrypt" title="Decrypt a string">DES_DECRYPT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_des-encrypt" title="Encrypt a string">DES_ENCRYPT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_encode" title="Encode a string">ENCODE()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_encrypt" title="Encrypt a string">ENCRYPT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_md5" title="Calculate MD5 checksum">MD5()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_old-password" title="Return the value of the  pre-4.1 implementation of PASSWORD">OLD_PASSWORD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_password" title="Calculate and return a password string">PASSWORD()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_sha1" title="Calculate an SHA-1 160-bit checksum">SHA1(), SHA()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_sha2" title="Calculate an SHA-2 checksum">SHA2()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_uncompress" title="Uncompress a string compressed">UNCOMPRESS()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html#function_uncompressed-length" title="Return the length of a string before compression">UNCOMPRESSED_LENGTH()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Miscellaneous</h2>
        <div class="board-card">
            <h3 class="board-card-title">Miscellaneous Functions</h3>
            <ul>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_default" title="Return the default value for a table column">DEFAULT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_get-lock" title="Get a named lock">GET_LOCK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_inet-aton" title="Return the numeric value of an IP address">INET_ATON()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_inet-ntoa" title="Return the IP address from a numeric value">INET_NTOA()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_is-free-lock" title="Checks whether the named lock  is free">IS_FREE_LOCK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_is-used-lock" title="Checks whether the named lock is in use.  Return connection identifier if true.">IS_USED_LOCK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_master-pos-wait" title="Block until the slave has read and  applied all updates up to the specified position">MASTER_POS_WAIT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_name-const" title="Causes the column to have the given name">NAME_CONST()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html#function_rand" title="Return a random floating-point value">RAND()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_release-lock" title="Releases the named lock">RELEASE_LOCK()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_sleep" title="Sleep for a number of seconds">SLEEP()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_uuid-short" title="Return an integer-valued universal identifier">UUID_SHORT()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_uuid" title="Return a Universal Unique Identifier (UUID)">UUID()</a></li>
                <li><a href="http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html#function_values" title="Defines the values to be used during an INSERT">VALUES()</a></li>
            </ul>
        </div>
    </div>

    <div class="board">
        <h2 class="board-title">Samples</h2>
        <div class="board-card">
            <h3 class="board-card-title">Select Queires</h3>
            <ul>
                <li>Returns all columns</li>
                <li class="tip">SELECT * FROM table</li>
                <li>Returns all columns</li>
                <li class="tip">SELECT * FROM table1, table2, ...</li>
                <li>Returns specific column</li>
                <li class="tip">SELECT field1, field2, ... FROM table1, table2, ...</li>
                <li>Returns rows that match condition</li>
                <li class="tip">SELECT ... FROM ... WHERE condition</li>
                <li>Returns with orders</li>
                <li class="tip">SELECT ... FROM ... WHERE condition GROUP BY field</li>
                <li>Returns withd orders and match condition</li>
                <li class="tip">SELECT ... FROM ... WHERE condition GROUP BY field HAVING condition2</li>
                <li>Returns first 10 rows</li>
                <li class="tip">SELECT ... FROM ... WHERE condition LIMIT 10</li>
                <li>Returns with no repeats</li>
                <li class="tip">SELECT DISTINCT field1 FROM ...</li>
                <li>Returns and joind</li>
                <li class="tip">SELECT ... FROM t1 JOIN t2 ON t1.id1 = t2.id2 WHERE condition</li>
            </ul>
        </div>
    </div>
</div>



</body>


<script src="/jslib/main.js"></script>
</html>