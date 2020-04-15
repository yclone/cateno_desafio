After ('@logout') do
    first(:link, 'Sign out').click
end

After do |scenario|
    screenshot = "log/screenshots/#{scenario.name}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png','evidencia')
end
