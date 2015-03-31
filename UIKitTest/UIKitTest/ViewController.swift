//
//  ViewController.swift
//  UIKitTest
//
//  Created by lizhuoli on 15/3/30.
//  Copyright (c) 2015年 lizhuoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel(frame: CGRectMake(10, 20, 320, 100))
        label.text = "《Swift语言实战》"
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.blackColor()
        label.textAlignment = NSTextAlignment.Right
        var button = UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton
        button.frame = CGRectMake(10, 150, 100, 30)
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.addTarget(self, action: Selector("tapped:"), forControlEvents: UIControlEvents.TouchUpInside)
        var switcher:UISwitch!
        switcher = UISwitch()
        switcher.center = CGPointMake(100, 50)
        switcher.on = true
        switcher.addTarget(self, action: Selector("switchDidChange:"), forControlEvents: UIControlEvents.ValueChanged)
        var items = ["选项一","选项二","选项三"]
        var segmented = UISegmentedControl(items:items)
        segmented.center = self.view.center
        segmented.selectedSegmentIndex = 1
        segmented.addTarget(self, action: "segmentDidChange:", forControlEvents: UIControlEvents.ValueChanged)
        var progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        progressView.frame = CGRectMake(0, 300, 300, 300)
        progressView.progress = 0.5
        var slider = UISlider(frame: CGRectMake(50, 600, 300, 50))
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0.5
        slider.addTarget(self, action: Selector("sliderDidChange:"), forControlEvents: UIControlEvents.ValueChanged)
        var picker=UIPickerView()
        picker.frame = CGRectMake(0, 350, 400,200)
        picker.dataSource = self
        picker.delegate = self
        picker.selectRow(1, inComponent: 0, animated: true)
        picker.selectRow(2, inComponent: 1, animated: true)
        picker.selectRow(3, inComponent: 2, animated: true)
        var stepper = UIStepper()
        stepper.frame = CGRectMake(0, 550, 400, 200)
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.value = 5
        stepper.stepValue = 0.5
        stepper.continuous = true
        stepper.addTarget(self, action: Selector("stepperValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        var scrollView = UIScrollView()
        scrollView.frame = CGRectMake(50, 200, 300, 50)
        var imageView = UIImageView(image: UIImage(named: "myPicture"))
        scrollView.contentSize = imageView.bounds.size
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 3
        scrollView.delegate = self
        scrollView.addSubview(imageView)
        
        self.view.addSubview(label)
        self.view.addSubview(button)
        self.view.addSubview(switcher)
        self.view.addSubview(segmented)
        self.view.addSubview(progressView)
        self.view.addSubview(slider)
        self.view.addSubview(picker)
        self.view.addSubview(stepper)
        self.view.addSubview(scrollView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tapped(button:UIButton){
        println("触摸ing")
        println(button.titleForState(.Normal))
        var actionSheet = UIActionSheet()
        actionSheet.title = "请选择您现在的想法"
        actionSheet.addButtonWithTitle("Go away!")
        actionSheet.addButtonWithTitle("Fuck!")
        actionSheet.addButtonWithTitle("Shit!")
        actionSheet.cancelButtonIndex = 0
        actionSheet.showInView(self.view)
    }
    
    func switchDidChange(switcher:UISwitch){
        println(switcher.on)
        var alertView = UIAlertView()
        alertView.title = "系统提示"
        alertView.message = "您确实你是逗比么"
        alertView.addButtonWithTitle("取消")
        alertView.addButtonWithTitle("确认")
        alertView.cancelButtonIndex = 0
        alertView.delegate = self
        alertView.show()
    }
    
    func segmentDidChange(segmented:UISegmentedControl){
        println("选择控件:\(segmented.titleForSegmentAtIndex(segmented.selectedSegmentIndex))")
        segmented.insertSegmentWithTitle("新增", atIndex: 0, animated: true)
    }
    
    func sliderDidChange(slider:UISlider){
        println("滑动条值:\(slider.value)")
    }
    //设置选择框的列数为3列,继承于UIPickerViewDataSource协议
    func numberOfComponentsInPickerView( pickerView: UIPickerView) -> Int{
        return 3
    }
    
    //设置选择框的行数为9行，继承于UIPickerViewDataSource协议
    func pickerView(pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int{
        return 9
    }
    
    //设置选择框各选项的内容，继承于UIPickerViewDelegate协议
    func pickerView(pickerView: UIPickerView!,titleForRow row: Int,forComponent component: Int) -> String!{
        return String(row)+"-"+String(component)
    }
    
    func stepperValueChanged(stepper:UIStepper){
        println(stepper.value)
    }

    func viewForZoomingInScrollView( scrollView: UIScrollView!) -> UIView!{
        for subview : AnyObject in scrollView.subviews {
            if subview.isKindOfClass(UIImageView) {
                return subview as UIView
            }
        }
        return nil
    }

}