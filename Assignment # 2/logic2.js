$(document).ready(function(){
    var Calculator = {
        vals : [],
        opr : [],
        answer:function(){
            var ans = 0;
            switch(this.opr[this.opr.length - 1]){
                case "+":
                    ans = this.addition();
                    break;
                case "-":
                    ans = this.subtract();
                    break;
                case "/":
                    ans = this.division();
                    break;
                case "*":
                    ans = this.multiply();
                    break;
                case "%":
                    ans = this.remainder();
                    break;
                case "x^y":
                    ans = this.pow();
                    break;
            }
            return ans;
        },
        pushValue : function(value){
            this.vals.push(value);
        },
        pushOperator: function(operator){
            this.opr.push(operator);
        },
        resetData: function(){
            this.vals = [];
            this.opr = [];
        },
        addition:function(){
            return this.vals[this.vals.length-2] + this.vals[this.vals.length-1]
        },
        subtract:function(){
            return this.vals[this.vals.length-2] - this.vals[this.vals.length-1]
        },
        division:function(){
            return this.vals[this.vals.length-2] / this.vals[this.vals.length-1]
        },
        multiply:function(){
            return this.vals[this.vals.length-2] * this.vals[this.vals.length-1]
        },
        remainder:function(){
            return this.vals[this.vals.length-2] % this.vals[this.vals.length-1]
        },
        pow:function(){
            return Math.pow(this.vals[this.vals.length-2] , this.vals[this.vals.length-1])
        }
    }

    var is_last_opr = false;
    $(".keypad-num-btn").click(function(){
        if($(".io-field").val()=="0" || is_last_opr){
            $(".io-field").val("");
            is_last_opr = false;
        }
        $(".io-field").val( $(".io-field").val() + $(this).html());
    });
    $(".clr-btn").click(function(){
        $(".io-field").val("0");
        Calculator.resetData();
    });

    $(".toolbox-btn").click(function(){
        Calculator.pushValue(parseFloat($(".io-field").val()));
        is_last_opr = true;
        Calculator.pushOperator($(this).html())
    });

    $(".keypad-eql-btn").click(function(){
        Calculator.pushValue(parseFloat($(".io-field").val()));
        $(".io-field").val(Calculator.answer())

    });
    $(".back-space").click(function(){
        val = $(".io-field").val();
        if(val != "0"){
            val = val.substring(0,val.length - 1);
            if(val.length == 0){
                val = "0";
            }
        }
        $(".io-field").val(val);
    });
});
