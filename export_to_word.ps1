# Export all CS3 assignments to Word
$baseDir = "D:\Hyrta-One\cmubeta2\My Drive\Thiện Phúc Cloud\Thanh Vũ Cà Mau\KPI TVM Cà Mau\FMFT\Bai tap CS3 - Nhom 8"
$outputDocx = Join-Path $baseDir "HO_SO_BAI_TAP_FMFT_CS3_NHOM_8_FINAL.docx"

$files = @(
    "DE_AN_1_TOI_UU_THOI_GIAN_CHO_NGOAI_TRU_M01_M04.md",
    "DE_AN_2_SHIN_AIOS_DASHBOARD_DIEU_HANH_M01_M04.md",
    "DE_AN_3_HE_THONG_DANH_GIA_NANG_LUC_5T_M01_M04.md",
    "SLIDE_BAO_CAO_THUYET_TRINH_3_DE_AN_CS3.md"
)

Write-Host "Khoi tao Microsoft Word COM Application..."
$word = New-Object -ComObject Word.Application
$word.Visible = $false
$doc = $word.Documents.Add()
$selection = $word.Selection

# Thiet lap trang
$doc.PageSetup.TopMargin = 40
$doc.PageSetup.BottomMargin = 40
$doc.PageSetup.LeftMargin = 50
$doc.PageSetup.RightMargin = 50

# Header
$doc.Sections.Item(1).Headers.Item(1).Range.Text = "HE THONG Y TE THANH VU MEDIC - NHOM 8 (CS3: PKDK CA MAU) | FMFT AIOS/LSE"
$doc.Sections.Item(1).Headers.Item(1).Range.Font.Size = 9
$doc.Sections.Item(1).Headers.Item(1).Range.Font.Color = 0x808080

foreach ($file in $files) {
    $filePath = Join-Path $baseDir $file
    if (Test-Path $filePath) {
        Write-Host "Dang them noi dung tu: $file"
        $content = Get-Content -Path $filePath -Encoding UTF8 -Raw
        
        $lines = $content -split "`r?`n"
        foreach ($line in $lines) {
            if ($line -match "^# (.+)$") {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 18
                $selection.Font.Bold = $true
                $selection.Font.Color = 0x800000 # Dark Blue / Maroon
                $selection.TypeText($matches[1])
                $selection.TypeParagraph()
            }
            elseif ($line -match "^## (.+)$") {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 14
                $selection.Font.Bold = $true
                $selection.Font.Color = 0x004080 # Navy
                $selection.TypeText($matches[1])
                $selection.TypeParagraph()
            }
            elseif ($line -match "^### (.+)$") {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 12
                $selection.Font.Bold = $true
                $selection.Font.Color = 0x202020
                $selection.TypeText($matches[1])
                $selection.TypeParagraph()
            }
            elseif ($line.StartsWith(">")) {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 10.5
                $selection.Font.Italic = $true
                $selection.Font.Color = 0x505050
                $selection.TypeText($line.TrimStart(">").Trim())
                $selection.TypeParagraph()
            }
            elseif ($line -match "^---+") {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 10
                $selection.TypeText("_________________________________________________________________________________")
                $selection.TypeParagraph()
            }
            else {
                $selection.Font.Name = "Times New Roman"
                $selection.Font.Size = 11
                $selection.Font.Bold = $false
                $selection.Font.Italic = $false
                $selection.Font.Color = 0x000000
                $cleanLine = $line -replace "\*\*(.+?)\*\*", '$1' -replace "\*(.+?)\*", '$1'
                $selection.TypeText($cleanLine)
                $selection.TypeParagraph()
            }
        }
        # Ngat trang giua cac de an
        $selection.InsertBreak(7) # wdPageBreak
    }
}

Write-Host "Luu file: $outputDocx"
if (Test-Path ) { Remove-Item  -Force -ErrorAction SilentlyContinue }
$doc.SaveAs2($outputDocx, 16)
$doc.Close()
$word.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()

Write-Host "DA XUAT THANH CONG FILE WORD HOAN CHINH!"