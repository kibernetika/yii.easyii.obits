/**
 * Created by Oshevchuk on 16.01.2017.
 */

var obtainTemp=[];
var obtainDocument={};
var page={
    text:"",
    id:""
};
var pageSize=1;
var currentPage=1;

var app = angular.module("app", ["ngRoute", 'ui.tinymce']);
app.config(function ($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "views/mainPage.html"
        })
        .when("/obits", {
            templateUrl: "views/obits.html"
        })
        .when("/about", {
            templateUrl: "views/about.html"
        })
        .when("/Rush", {
            templateUrl: "blue.htm"
        })
        .when("/Order", {
            templateUrl: "blue.htm"
        })
});

app.controller('mainController', function ($scope, myStore) {
    $scope.myStore = myStore;
    $scope.login = function () {
        myStore.setIndex(true);
    }

    $scope.printMode = false;


    $scope.switchEditMode = function (e) {
        if (e) {
            $scope.printMode = false;
            angular.element(document).find('#edit1').addClass('activePrintType');
            angular.element(document).find('#edit2').removeClass('activePrintType');
        } else {
            $scope.printMode = true;
            angular.element(document).find('#edit2').addClass('activePrintType');
            angular.element(document).find('#edit1').removeClass('activePrintType');
        }
    }
})

app.controller('loginCtrl', function ($scope, myStore) {
    $scope.myStore = myStore;
    $scope.showLogin = false;
    up();
    $scope.switchLogin = function () {
        $scope.showLogin = false;
        up();
    }

    $scope.switchRegister = function () {
        $scope.showLogin = true;
        up();
    }

    function up() {
        console.log($scope.showLogin);
        if ($scope.showLogin) {
            //angular.element(document).find('#tabLogin').addClass('active');
            document.getElementById('tabLogin').classList.add('active');
            //angular.element(document).find('#tabSign').removeClass('active');
            document.getElementById('tabSign').classList.remove('active');
        } else {
            //angular.element(document).find('#tabSign').addClass('active');
            //angular.element(document).find('#tabLogin').removeClass('active');
            document.getElementById('tabSign').classList.add('active');
            document.getElementById('tabLogin').classList.remove('active');
        }
    }
})

app.factory('myStore', function () {
    var showLoginForm = false;
    return {
        getIndex: function () {
            return showLoginForm;
        },
        setIndex: function (value) {
            showLoginForm = value;
        }
    }
})

app.controller('TabController', function ($scope, $rootScope, $http, $element) {
    $scope.tab = 1;
    $scope.text = "dd";

    $scope.currentPage=currentPage;

    $scope.currentSide=false;

    $scope.setTab = function (newTab) {
        $scope.tab = newTab;

        if (newTab == 2) {

            pageSize=$scope.selectedCar.model;


            //$rootScope.tinymceModel=$scope.obtainTemplate.type+":"+$scope.obtainTemplate.doubleSide;
            $http.get('template/tem'+$scope.obtainTemplate.type+'.html').then(function (res) {
                //console.log(res.data);
                obtainTemp[0]=res.data;
                //$scope.text = res.data;

                $rootScope.tinymceModel = res.data;

                obtainDocument=[];
                for(var i=0;i<pageSize; i++){
                    obtainDocument.push(res.data);
                }
/*
                obtainDocument[0]=res.data;
                obtainDocument[1]="2";
                obtainDocument[2]="3";
                obtainDocument[3]="4";
*/

            });



            for(var i=0; i<pageSize; i++) {
                angular.element(document).find('#paginator').append(
                    "<div class='pagesNav'><a onclick='goo("+i+")' > <img class='imgprev' id='i"+i+"' src='img/page.png' ng-click='virtBut()'/></a><span>"+Math.round(i+1)+"</span></div>"
                );
            }
        }
    };

    $scope.showSide=function (e) {
        $scope.currentSide=e;
    };

    $scope.virtBut=function (e) {
        console.log("ok");
    }

    $scope.saveCurrent=function () {
/*
        var tmp=$rootScope.tinymceModel;
        tmp.getElementById("#temlTable").style.backgroundColor="red";
        $rootScope.tinymceModel=tmp;
        */

        //var t= angular.element(document).find('#temlTable');

        //$rootScope.tinymceModel.activeEditor.contentDocument.body.style.backgroundColor="red";

        //var el=tinyMCE.activeEditor.getContent();

        //alert(tinyMCE.activeEditor.selection.getContent());

        /*obtainDocument.push("text", "num1");
        obtainDocument.push("tt", "nm1");

        console.log(obtainDocument);*/

        obtainDocument[currentPage]= tinyMCE.activeEditor.getContent();


        /*console.log(el);*/

        if($scope.currentSide)
            obtainTemp[0].num="1";
        else
            obtainTemp[0].num="2";
        //console.log(obtainTemp);
    };

    $scope.isSet = function (tabNum) {
        return $scope.tab === tabNum;
    };
    /*
     tinymce.init({
     selector: '#mytextarea'
     });*/

    $scope.setImage=function (e) {
        tinyMCE.activeEditor.dom.setStyle('temlTable', 'background-image', "url('"+ $scope.url+")");
        //document.getElementById("myRadio").value;
        alert(document.querySelector('input[name = "bg-size"]:checked').value);
    }

    $scope.cars = {
        car01: {brand: "2 pages", model: "2", color: "red"},
        car02: {brand: "4 pages", model: "4", color: "white"},
        car03: {brand: "8 pages", model: "8", color: "white"},
        car04: {brand: "12 pages", model: "12", color: "white"},
        car05: {brand: "16 pages", model: "16", color: "white"},
        car06: {brand: "20 pages", model: "20", color: "white"}
    }

    $scope.obtainTemplate = {
        type: '1',
        doubleSide: false
    }
});


function goo(e) {
    console.log(e);
    currentPage=e;
    var x= document.getElementsByClassName('imgprev');
    for(var i=0;i<x.length;i++){
        x[i].style.backgroundColor = "white";
    }

    document.getElementById('i'+e).style["background-color"]="lightblue";
    tinyMCE.activeEditor.setContent(obtainDocument[currentPage]);
}


app.controller('setObtainParams', function ($scope) {

})


app.controller('TinyMceController', function ($scope, $rootScope) {
    $rootScope.tinymceModel = 'Initial content';

    $scope.getContent = function () {
        console.log('Editor content:', $rootScope.tinymceModel);
    };

    $scope.setContent = function () {
        $rootScope.tinymceModel = 'Time: ' + (new Date());
    };

    $rootScope.tinymceOptions = {
        plugins: [
            "advlist autolink lists link image charmap print preview hr anchor pagebreak",
            "searchreplace wordcount visualblocks visualchars code fullscreen",
            "insertdatetime media nonbreaking save table contextmenu directionality",
            "emoticons template paste textcolor"
        ],
        toolbar1: "fontsizeselect fontselect | insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        toolbar2: "print preview media | forecolor backcolor emoticons | currentD | SetBGimage",
        font_formats: 'Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;AkrutiKndPadmini=Akpdmi-n',
        fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt',
        image_advtab: true,
        height: "500px",

        setup: function (editor) {
            editor.addButton('currentD', {
                icon: 'insertdatetime',
                onclick: function () {
                    //tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.dom.select('table'), 'background-color', 'red');
                    //tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.selection.getContent(), 'background-color', 'red');
                    //tinyMCE.activeEditor.dom.setStyle('temlTable', 'background-color', 'red');
                    document.getElementById("editDialog").style.display='block';
                    //$("#draggable").draggable();
                }
            })
            editor.addButton('SetBGimage', {
                icon: 'insertdatetime',
                onclick: function () {
                    //alert(1);
                    tinyMCE.activeEditor.dom.setStyle('temlTable', 'background-image', 'url('+document.getElementById("utlPath").value+')');
                    //tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.dom.select('table'), 'background-image', 'url('+document.getElementById("utlPath").value+')');
                    /*tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.dom.select('table'), 'background-color', 'red');*/
                    //tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.dom.getContent(), 'background-color', 'red');
                }
            })

        }
    };



});

function setImageUrl(e) {
    //alert(document.getElementById("utlPath").value);
    tinyMCE.activeEditor.dom.setStyle(tinyMCE.activeEditor.dom.select('table'), 'background-image', document.getElementById("utlPath").value);
    //alert(1);
}