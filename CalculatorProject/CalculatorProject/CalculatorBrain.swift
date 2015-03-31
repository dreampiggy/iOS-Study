//
//  CalculatorBrain.swift
//  CalculatorProject
//
//  Created by lizhuoli on 15/3/31.
//  Copyright (c) 2015年 lizhuoli. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    enum Op: Printable{
        case Operand(Double)
        case UnaryOperation(String, Double -> Double?)
        case BinaryOperation(String, (Double, Double) -> Double?)
        
        var description: String{
            get{
                switch self{
                case .Operand(let operand):
                    return "\(operand)"
                case .UnaryOperation(let symbol, _):
                    return symbol
                case .BinaryOperation(let symbol, _):
                    return symbol
                }
            }
        }
    }
    
    var opStack = [Op]()
    
    var knownOps = [String : Op]()
    
    init(){
        knownOps["+"] = Op.BinaryOperation("+"){ $0 + $1 }
        knownOps["-"] = Op.BinaryOperation("-"){ $1 - $0 }
        knownOps["*"] = Op.BinaryOperation("*"){ $0 * $1 }
        knownOps["/"] = Op.BinaryOperation("/"){ ($0 != 0) ? $1 / $0 : nil }
        knownOps["^"] = Op.UnaryOperation("^"){ $0 * $0 }
        knownOps["√"] = Op.UnaryOperation("√"){ sqrt($0) }
    }
    
    func evaluate(ops: [Op]) -> (result: Double?, remainingOps: [Op]){
        if !ops.isEmpty{
            var remainingOps = ops
            let op = remainingOps.removeLast()
            switch op{
            case .Operand(let operand):
                return (operand, remainingOps)
            case .UnaryOperation(_, let operation):
                let operationEvaluation = evaluate(remainingOps)
                if let operand = operationEvaluation.result{
                    return (operation(operand),operationEvaluation.remainingOps)
                }
            case .BinaryOperation(_, let operation):
                let opOneOperation = evaluate(remainingOps)
                if let operandOne = opOneOperation.result{
                    let opTwoOperation = evaluate(opOneOperation.remainingOps)
                    if let operandTwo = opTwoOperation.result{
                        return (operation(operandOne, operandTwo), opTwoOperation.remainingOps)
                    }
                }
            }
        }
        return (nil, ops)
    }
    
    func getResult() ->Double?{
        let (result,remainingOps) = evaluate(opStack)
        return result
    }
    
    func pushOperand(operand: Double) -> Double?{
        opStack.append(Op.Operand(operand))
        return getResult()
    }
    
    func performOperation(symbol: String) -> Double?{
        if let operation = knownOps[symbol]{
            opStack.append(operation)
        }
        return getResult()
    }
}