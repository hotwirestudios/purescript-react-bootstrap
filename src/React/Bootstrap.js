// module React.Bootstrap

"use strict";

var react = require('react');
var bootstrap = require('react-bootstrap');


// copied from purescript-react/src/React/DOM.js
function mkProps(props) {
    var result = {};

    for (var i = 0, len = props.length; i < len; i++) {
        var prop = props[i];

        for (var key in prop) {
            if (prop.hasOwnProperty(key)) {
                result[key] = prop[key];
            }
        }
    }

    return result;
};

exports.bootstrap = function(n) {
        var elt = bootstrap[n];
        return function(props){
                return function(children){
                        // bootstrap Overlay components are picky about how child elements are passed
                        if(children.length == 0){
                                return react.createElement(elt, props.length > 0 ? mkProps(props) : null);
                        } else if(children.length == 1){
                                return react.createElement(elt, props.length > 0 ? mkProps(props) : null, children[0]);
                        } else {
                                return react.createElement(elt, props.length > 0 ? mkProps(props) : null, children);
                        }
                }
        }
};
