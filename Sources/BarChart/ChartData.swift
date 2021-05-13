//
//  ChartData.swift
//  BarChart
//
//  Copyright (c) 2020 Roman Baitaliuk
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.

import SwiftUI

public struct ChartDataEntry<S: ShapeStyle>: Identifiable, Equatable {
    public var id = UUID()
    public var x: String
    public var y: Double
    public var fill: S
    
    public init(x: String, y: Double, fill: S) {
        self.x = x
        self.y = y
        self.fill = fill
    }
    
    public static func == (lhs: ChartDataEntry<S>, rhs: ChartDataEntry<S>) -> Bool {
        return lhs.id == rhs.id
    }
}

public struct ChartData<S: ShapeStyle> {
    public var entries: [ChartDataEntry<S>] = []
    
    var yValues: [Double] {
        return self.entries.map { $0.y }
    }
    
    var xValues: [String] {
        return self.entries.map { $0.x }
    }
}
