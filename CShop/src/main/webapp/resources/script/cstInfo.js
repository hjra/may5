$(function () {
    $('#grid').w2grid({ 
        name: 'grid', 
        records: [
        { "recid": 1, "cstId": "John", "cstName": "Doe", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 2, "cstId": "Stuart", "cstName": "Motzart", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 3, "cstId": "Jin", "cstName": "Franson", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 4, "cstId": "Susan", "cstName": "Ottie", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 5, "cstId": "Kelly", "cstName": "Silver", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 6, "cstId": "Francis", "cstName": "Gatos", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 7, "cstId": "Mark", "cstName": "Welldo", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 8, "cstId": "Thomas", "cstName": "Bahh", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" },
        { "recid": 9, "cstId": "Sergei", "cstName": "Rachmaninov", "levelCode": "jdoe@gmail.com", "joinDate": "4/3/2012" }
    ],
        show: {
            toolbar     : true,
            footer        : true,
            lineNumbers    : true,
            selectColumn: true,
            expandColumn: true
        },        
        columns: [                
            { field: 'cstId', caption: '아이디', size: '30%' },
            { field: 'cstName', caption: '이름', size: '30%' },
            { field: 'levelCode', caption: '회원등급', size: '40%' },
            { field: 'joinDate', caption: '가입일', size: '120px' },
        ],
        searches: [
            { type: 'text', field: 'cstId', caption: '아이디' },
            { type: 'text', field: 'cstName', caption: '이름' },
            { type: 'text', field: 'levelCode', caption: '회원등급' }
        ],
        onExpand: function (event) {
            $('#'+event.box_id).html('<div style="padding: 10px">추가로 보여주고 싶은 정보</div>').animate({ 'height': 100 }, 100);
        }
    });    
});