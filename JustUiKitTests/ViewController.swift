//
//  ViewController.swift
//  JustUiKitTest
//
//  Created by 刘丰恺 on 2017/1/2.
//  Copyright (c) 2017 ___FULL___. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createSectionLabel(_ title: String) -> UILabel {
        let sectionLabel = UILabel()
        sectionLabel.text = title;
        sectionLabel.font = UIFont.systemFont(ofSize: 17)
        sectionLabel.sizeToFit()
        // sizeToFit函数的意思是让视图的尺寸刚好包裹其内容。
        // 注意sizeToFit方法必要在设置字体、文字后调用才正确。
        return sectionLabel
    }


    override func loadView() {
        super.loadView()

        self.view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = UIColor(rgb: 0xFF8C00)

        let lfkdsk = JustLinearLayout(frame: UIScreen.main.bounds, orientation: .Horizontal)

        view.addSubview(lfkdsk)

        let linearLayout: JustLinearLayout = lfkdsk

        let params: LinearLayoutParams = LinearLayoutParams(
                width: LayoutParams.WRAP_CONTENT,
                height: LayoutParams.WRAP_CONTENT)
        params.weight = 1
//        params.leftMargin = 100
//        params.rightMargin = 10

        let fuckView = createSectionLabel("FUCK")

        print(fuckView.frame.origin)
        print(fuckView.frame.size)

        print("Before Layout")

        let centerParams = LinearLayoutParams(linear: params)
//        centerParams.weight = 1
        centerParams.layoutGravity = Gravity.CENTER_VERTICAL | Gravity.CENTER_HORIZONTAL

        let rightParams = LinearLayoutParams(linear: params)
        rightParams.layoutGravity = Gravity.BOTTOM.getValue()

        let rightAndBottomParams = LinearLayoutParams(params)
//        rightAndBottomParams.weight = 1
        rightAndBottomParams.layoutGravity = Gravity.BOTTOM | Gravity.RIGHT

        let rightAndTopParams = LinearLayoutParams(linear: params)
//        rightAndTopParams.rightMargin = 12
//        rightAndTopParams.weight = 1
        rightAndTopParams.layoutGravity = Gravity.TOP | Gravity.RIGHT

        linearLayout.addView(view: createSectionLabel("苟"), params: rightAndTopParams)
        linearLayout.addView(view: createSectionLabel("利"), params: params)
        linearLayout.addView(view: createSectionLabel("国"), params: params)
//        linearLayout.addView(view: createSectionLabel("家"), params: centerParams)
//        linearLayout.addView(view: createSectionLabel("生"), params: params)
//        linearLayout.addView(view: createSectionLabel("死"), params: rightAndBottomParams)
//        linearLayout.addView(view: createSectionLabel("以"), params: params)
//        linearLayout.addView(view: createSectionLabel("岂因祸福"), params: params)
//        linearLayout.addView(view: createSectionLabel("岂因祸福"), params: params)
//        linearLayout.addView(view: createSectionLabel("岂因祸福"), params: params)
//        linearLayout.addView(view: createSectionLabel("以"), params: params)

        var fuck2View = JustLinearLayout(orientation: .Horizontal)
//        fuck2View.linearExtension.padding.paddingBottom = 10
        var Fuck2Params = LinearLayoutParams(width: LayoutParams.MATCH_PARENT,
                height: LayoutParams.WRAP_CONTENT)
//        Fuck2Params.topMargin = 80
        Fuck2Params.leftMargin = 20
        Fuck2Params.weight = 1
        Fuck2Params.layoutGravity = Gravity.CENTER_VERTICAL.getValue()
//        fuck2View.setPadding(top: 10, left: 0, right: 10, bottom: 0)
        lfkdsk.addView(view: fuck2View, params: Fuck2Params)

        let firstInnerItem = createSectionLabel("以")
//        rightAndTopParams.bottomMargin = 10

        fuck2View.addView(view: firstInnerItem, params: params)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: params)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: params)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: params)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: rightParams)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: params)
        fuck2View.addView(view: createSectionLabel("岂因祸福"), params: centerParams)
//        fuck2View.linearExtension.padding.paddingRight = 80

    }

}
