<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
CALENADR 화면

<link rel="stylesheet" type="text/css" href="http://w2ui.com/src/w2ui-1.4.min.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script type="text/javascript" src="http://w2ui.com/src/w2ui-1.4.min.js"></script>

<button class="btn" onclick="var obj = w2ui['grid']; obj.show.header = !obj.show.header; w2ui['grid'].refresh();">Header</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.toolbar = !obj.show.toolbar; w2ui['grid'].refresh();">Toolbar</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.columnHeaders = !obj.show.columnHeaders; w2ui['grid'].refresh();">Column Headers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.footer = !obj.show.footer; w2ui['grid'].refresh();">Footer</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.lineNumbers = !obj.show.lineNumbers; w2ui['grid'].refresh();">Line Numbers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.selectColumn = !obj.show.selectColumn; w2ui['grid'].refresh();">Select Column</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.expandColumn = !obj.show.expandColumn; w2ui['grid'].refresh();">Expand Column</button>

<script type="text/javascript">
$(function () {
    $('#grid').w2grid({ 
        name: 'grid', 
        header: 'List of Names',

        data: {
            "total": 9,
            "records": [
                { "recid": 1, "fname": "John", "lname": "Doe", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 2, "fname": "Stuart", "lname": "Motzart", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 3, "fname": "Jin", "lname": "Franson", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 4, "fname": "Susan", "lname": "Ottie", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 5, "fname": "Kelly", "lname": "Silver", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 6, "fname": "Francis", "lname": "Gatos", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 7, "fname": "Mark", "lname": "Welldo", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 8, "fname": "Thomas", "lname": "Bahh", "email": "jdoe@gmail.com", "sdate": "4/3/2012" },
                { "recid": 9, "fname": "Sergei", "lname": "Rachmaninov", "email": "jdoe@gmail.com", "sdate": "4/3/2012" }
            ]
        },
        show: {
            header         : true,
            toolbar     : true,
            footer        : true,
            lineNumbers    : true,
            selectColumn: true,
            expandColumn: true
        },        
        columns: [                
            { field: 'fname', caption: 'First Name', size: '30%' },
            { field: 'lname', caption: 'Last Name', size: '30%' },
            { field: 'email', caption: 'Email', size: '40%' },
            { field: 'sdate', caption: 'Start Date', size: '120px' },
        ],
        searches: [
            { type: 'int',  field: 'recid', caption: 'ID' },
            { type: 'text', field: 'fname', caption: 'First Name' },
            { type: 'text', field: 'lname', caption: 'Last Name' },
            { type: 'date', field: 'sdate', caption: 'Start Date' }
        ],
        onExpand: function (event) {
            $('#'+event.box_id).html('<div style="padding: 10px">Expanded content</div>').animate({ 'height': 100 }, 100);
        }
    });    
});
</script>