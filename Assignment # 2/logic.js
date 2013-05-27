$(document).ready(function(){
    var Calculator = function(){
        this.vals = [];
        this.opr = []; //this is for object level variables, this function acts as construct
    }

    Calculator.prototype.answer = function(){
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
    }

    Calculator.prototype.pushValue = function(value){
        this.vals.push(value);
    }
    Calculator.prototype.pushOperator = function(operator){
        this.opr.push(operator);
    }
    Calculator.prototype.resetData = function(){
        this.vals = [];
        this.opr = [];
    }
    Calculator.prototype.addition = function(){
        return this.vals[this.vals.length-2] + this.vals[this.vals.length-1]
    }
    Calculator.prototype.subtract = function(){
        return this.vals[this.vals.length-2] - this.vals[this.vals.length-1]
    }
    Calculator.prototype.division = function(){
        return this.vals[this.vals.length-2] / this.vals[this.vals.length-1]
    }
    Calculator.prototype.multiply = function(){
        return this.vals[this.vals.length-2] * this.vals[this.vals.length-1]
    }
    Calculator.prototype.remainder = function(){
        return this.vals[this.vals.length-2] % this.vals[this.vals.length-1]
    }
    Calculator.prototype.pow = function(){
        return Math.pow(this.vals[this.vals.length-2] , this.vals[this.vals.length-1])
    }

    var calculator = new Calculator();

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
       calculator.resetData();
    });

    $(".toolbox-btn").click(function(){
      calculator.pushValue(parseFloat($(".io-field").val()));
      is_last_opr = true;
      calculator.pushOperator($(this).html())
    });

    $(".keypad-eql-btn").click(function(){
       calculator.pushValue(parseFloat($(".io-field").val()));
       $(".io-field").val(calculator.answer())

    });
    $(".back-space").click(function(){
        /*alert(calculator.vals)
        var c2=new Calculator();
        alert(c2.vals);
        alert(calculator.vals)
        return;*/
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
