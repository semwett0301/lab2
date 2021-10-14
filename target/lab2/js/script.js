// Поиск значения
$(document).ready(function(){
    $('.coordinates_picture').on('click', function(e) {
        let scope = $('select[name="r_coordinate"]').val();
        let x_coord = ((e.pageX - $(this).offset().left - 150) / 99.5) * scope;
        let y_coord = (-(e.pageY - $(this).offset().top - 150) / 99.5) * scope;

        if (clickValidate(x_coord, y_coord, scope)) {
            window.location = '/lab2/' + '?x_coordinate=' + x_coord.toFixed(3) + ' &y_coordinate= ' + y_coord.toFixed(3) + ' &r_coordinate=' + scope;
        } else {
            if (!clickX(x_coord)) set_and_remove_error_X("Значение выходит за границы диапазона")
            if (!clickY(y_coord)) set_and_remove_error_Y("Значение выходит за границы диапазона")
        }
        // console.log(e.pageX - $(this).offset().left)
        // console.log(e.pageY - $(this).offset().top)
    })
});

function clickValidate(x, y, r) {
    return !!(clickX(x) && clickY(y) && clickR(r));

}

function clickX(x) {
    return x >= -5 && x <= 3;
}

function clickY(y) {
    return y > -3 && y < 3;
}

function clickR(r) {
    return r >= 1 && r <= 5;
}

// window.onload = function () {
//     changeR();
// }
//
// function changeR() {
//     let n = document.getElementById("r_coordinate_select").options.selectedIndex;
//     let value = document.getElementById("r_coordinate_select").options[n].value;
//
//     let areas = document.getElementsByTagName("text");
//
//     for (i = 0; i < areas.length; i++) {
//
//         switch (areas[i].innerHTML) {
//             case "R":
//             case areas[i].innerHTML.match("\d") ? areas[i].innerHTML : true:
//                 console.log(areas[0].innerHTML)
//                 areas[i].innerHTML = value;
//                 break;
//             case "R/2":
//             case areas[i].innerHTML.match("\d/2") ? areas[i].innerHTML : true:
//                 areas[i].innerHTML = value + "/2";
//                 break;
//             case "-R":
//             case areas[i].innerHTML.match("-\d") ? areas[i].innerHTML : true:
//                 areas[i].innerHTML = "-" + value;
//                 break;
//             case "-R/2":
//             case areas[i].innerHTML.match("-\d/2") ? areas[i].innerHTML : true:
//                 areas[i].innerHTML = "-" + value + "/2";
//                 break;
//         }
//     }
// }

document.getElementById('form_with_coordinates').onsubmit = function (event) {
    event.preventDefault();
    if(validate()) {
        document.getElementById('form_with_coordinates').submit();
    }
};

function validate() {
    let x_coordinate = check_and_return_X();
    let y_coordinate = check_and_return_Y();
    let r_coordinate = check_and_return_R();

    set_and_remove_error_X(x_coordinate);
    set_and_remove_error_Y(y_coordinate);


    return !isNaN(x_coordinate) && !isNaN(y_coordinate) && !isNaN(r_coordinate);


}

// function onRequest(param) {
//     let request = ajaxRequest()
//
//     request.open("GET", "lab2/?" + param, true)
//     request.setRequestHeader("Content-type", "application/x-www-form-urlencoded", "charset=UTF-8")
//     request.onreadystatechange = function () {
//         if (this.readyState === 4 && this.status === 200) {
//             if (this.responseText != null) {
//                 document.querySelector('.result_block').innerHTML = this.responseText
//                 $('.result_block').fadeIn();
//                 window.scrollTo({top: window.innerHeight, behavior: 'smooth'});
//             }
//         }
//     }
//     request.send()
// }

function check_and_return_X() {
    let x_coordinate = document.querySelector('input[type=checkbox]:checked');
    let x_coordinates = document.querySelectorAll('input[type=checkbox]:checked');

    if (x_coordinates.length <= 1) {
        if (x_coordinate != null) {
            return x_coordinate.value
        } else {
            return "Нужно выбрать координату X"
        }
    } else {
        return "Нужно выбрать только 1 checkbox"

    }
}

function check_and_return_Y() {
    let y_coordinate = document.querySelector('input[name=y_coordinate]').value;
    if (y_coordinate.includes(',')) {
        let x_parts = y_coordinate.split(',', 2);
        if (!isNaN(x_parts[0]) && !isNaN(x_parts[1])) {
            y_coordinate = x_parts[0] + "." + x_parts[1]
            parseFloat(y_coordinate);
        }

    }
    if (!isNaN(y_coordinate) && !y_coordinate == '') {
        if (y_coordinate != '-0') {
            if (y_coordinate > -3 && y_coordinate < 3) {
                return y_coordinate
            } else {
                return "Введите число в правильном диапазоне"
            }
        } else {
            return "Введите корректное число"
        }
    }
    return "Введите число"
}

function check_and_return_R() {
    return document.querySelector('select[name=r_coordinate]').value;
}

function set_and_remove_error_X(x_coordinate) {
    if (!isNaN(x_coordinate)) {
        document.querySelector('.x_error').innerHTML = '';
    } else {
        document.querySelector('.x_error').innerHTML = x_coordinate;
    }
}

function set_and_remove_error_Y(y_coordinate) {
    if (!isNaN(y_coordinate)) {
        document.querySelector('.y_error').innerHTML = '';
    } else {
        document.querySelector('.y_error').innerHTML = y_coordinate;
    }
}

// function ajaxRequest() {
//     try {
//         var request = new XMLHttpRequest()
//     } catch (e1) {
//         try {
//             request = new ActiveXObject("Msxml2.XMLHTTP")
//         } catch (e2) {
//             try {
//                 request = new ActiveXObject("Microsoft.XMLHTTP")
//             } catch (e3) {
//                 request = false
//             }
//         }
//     }
//     return request;
// }

// function addLastResult() {
//     if (document.querySelector('.result_block').innerHTML !== '') {
//         let x = document.querySelector('.x').innerHTML;
//         let y = document.querySelector('.y').innerHTML;
//         let r = document.querySelector('.r').innerHTML;
//         let result_time = document.querySelector('.result_time').innerHTML;
//         let tmp_time = document.querySelector('.tmp_time').innerHTML;
//         let hit = document.querySelector('.hit').innerHTML;
//
//         if (hit === 'Точка лежит в области') {
//             hit = 'Да'
//         } else {
//             hit = 'Нет'
//         }
//
//         document.querySelector('.past_results table tbody').innerHTML += '<tr>\n' +
//             '                <td>' + x + '</td>\n' +
//             '                <td>' + y + '</td>\n' +
//             '                <td>' + r + '</td>\n' +
//             '                <td>' + result_time + '</td>\n' +
//             '                <td>' + tmp_time + '</td>\n' +
//             '                <td>' + hit + '</td>\n' +
//             '            </tr>'
//     }
//
//     if (document.querySelectorAll('.past_results tbody tr').length === 1) {
//         $('.past_results').fadeIn(300);
//     }
// }