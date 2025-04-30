*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.bewellstyle.com/
${item1}    เบาะรองหลังเพื่อสุขภาพ สำหรับรถยนต์ | Car Seat Back Cushion
${item2}    เบาะรองหลังทรงสูง | Healthy Back
${item3}    ผ้าห่มเย็นอัจฉริยะ | Cool Blanket

*** Test Cases ***
test01 add item to cart
    [Tags]        test01
    SeleniumLibrary.Open browser    ${URL}    chrome
    SeleniumLibrary.Click element    xpath=//div[@class='wrapp-header']//div[@class="search-button basel-search-dropdown"]
    SeleniumLibrary.Input text    xpath=//div[@class="basel-search-wrapper search-overlap"]//input[@placeholder="Search for products"]    ${item1}
    SeleniumLibrary.Click element    xpath=//div[@class="basel-search-wrapper search-overlap"]//button[text()="Search"]
    SeleniumLibrary.Click element    xpath=//a[text()="ยอมรับ"]
    SeleniumLibrary.Click element    xpath=//button[@class="pum-close popmake-close"]
    SeleniumLibrary.Wait until element is visible    xpath=//a[text()="เบาะรองหลังเพื่อสุขภาพ สำหรับรถยนต์ | Car Seat Back Cushion"]
    SeleniumLibrary.Click element    xpath=//a[text()="เบาะรองหลังเพื่อสุขภาพ สำหรับรถยนต์ | Car Seat Back Cushion"]
    SeleniumLibrary.Click element    xpath=//button[text()="หยิบใส่ตะกร้า"]
    SeleniumLibrary.Click element    xpath=//div[@class='wrapp-header']//div[@class="search-button basel-search-dropdown"]
    SeleniumLibrary.Input text    xpath=//div[@class="basel-search-wrapper search-overlap"]//input[@placeholder="Search for products"]    ${item2}
    SeleniumLibrary.Click element    xpath=//div[@class="basel-search-wrapper search-overlap"]//button[text()="Search"]
    SeleniumLibrary.Click element    xpath=//select[@name="attribute_pa_color"]
    SeleniumLibrary.Click element    xpath=//option[text()="สีน้ำเงิน - เบาะรองหลังทรงสูง"]
    SeleniumLibrary.Click element    xpath=//button[text()="หยิบใส่ตะกร้า"]
    SeleniumLibrary.Click element    xpath=//div[@class='wrapp-header']//div[@class="search-button basel-search-dropdown"]
    SeleniumLibrary.Input text    xpath=//div[@class="basel-search-wrapper search-overlap"]//input[@placeholder="Search for products"]    ${item3}
    SeleniumLibrary.Click element    xpath=//div[@class="basel-search-wrapper search-overlap"]//button[text()="Search"]
    SeleniumLibrary.Click element    xpath=//select[@name="attribute_%e0%b8%aa%e0%b8%b5"]
    SeleniumLibrary.Click element    xpath=//option[text()='"ฟ้า"']
    SeleniumLibrary.Click element    xpath=//select[@name="attribute_%e0%b8%82%e0%b8%99%e0%b8%b2%e0%b8%94"]
    SeleniumLibrary.Click element    xpath=//option[text()='"200x230cm."']
    SeleniumLibrary.Click element    xpath=//button[text()="หยิบใส่ตะกร้า"]
    BuiltIn.Sleep    5s