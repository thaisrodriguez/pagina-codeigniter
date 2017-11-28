/*
* String.Format( " cadena que se reemplaza {0}, {1}", "valor1", "valor 2");
*/

function Menu()
{
    var _item = jQuery(".cl-vnavigation li a[data-controlador="+controladoractual+"]");
    var _count_modulo = _item.length;
    if(_count_modulo > 1)
    {
        _item.find(".hide").each(function(index, element)
        {
            actual = $(this).data('action');
            if(actual == funcionactual)
            {
                $(this).parent().parent().addClass('active');
            }
        });
    }
    else
    {
        _item.parent().addClass('active');
    }
}

/*
function Menu()
{
    var _item = jQuery(".cl-vnavigation li a[data-controlador="+controladoractual+"]");
    var _count_modulo = _item.length;
    if(_count_modulo > 1 )
    {
        _item.find(".hide").each(function(index, element)
        {
            var _sitem = jQuery(this);
            var _siaction = String(_sitem.attr('data-action'));
            if(funcionactual.indexOf(_siaction)!==-1)
            {   
                _sitem.parent().parent().addClass('active');
                return false;
            }
        });
    }
    else
    {
        _item.parent().addClass('active');
    }
}
*/

function SoloNumeros(evt)
{
    var charCode = (evt.which) ? evt.which : window.event.keyCode;
    if (charCode <= 13)
        return true;
    else
    {
        var keyChar = String.fromCharCode(charCode);
        var reg = /[0-9.]/;
        return reg.test(keyChar);
    }
}

function _StringFormatInline() {
    var txt = this;
    for (var i = 0; i < arguments.length; i++) {
        var exp = new RegExp('\\{' + (i) + '\\}', 'gm');
        txt = txt.replace(exp, arguments[i]);
    }
    return txt;
}

function _StringFormatStatic() {
    for (var i = 1; i < arguments.length; i++) {
        var exp = new RegExp('\\{' + (i - 1) + '\\}', 'gm');
        arguments[0] = arguments[0].replace(exp, arguments[i]);
    }
    return arguments[0];
}

if (!String.prototype.format) { String.prototype.format = _StringFormatInline; }
if (!String.format) { String.format = _StringFormatStatic; }

/*
*
*/

var isIE = (window.navigator.userAgent.indexOf("MSIE") > 0);
if (!isIE) {  
  HTMLElement.prototype.__defineGetter__("innerText",function () { return(this.textContent); });   
  HTMLElement.prototype.__defineSetter__("innerText",function (txt) { this.textContent = txt; });
}

jQuery(document).ready(function()
{
    Menu();
});


