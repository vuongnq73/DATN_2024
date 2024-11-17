package com.example.bee_shirt.controller;

import com.example.bee_shirt.EntityThuocTinh.Size;
import com.example.bee_shirt.repository.SizeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

<<<<<<< Updated upstream
@RestController
@RequestMapping("/api/sizes")
=======
import java.util.Random;

@RestController
@RequestMapping("/api/sizes")
@CrossOrigin(origins = "http://127.0.0.1:5500") // Cấu hình CORS cho endpoint này

>>>>>>> Stashed changes
public class SizeController {

    @Autowired
    private SizeRepository sizeRepository;

    // Hiển thị danh sách kích thước với phân trang 5 phần tử
    @GetMapping("/list")
    public ResponseEntity<Page<Size>> getSizes(@RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, 5);
        Page<Size> sizes = sizeRepository.findAllSizes(pageable);
        return ResponseEntity.ok(sizes);
    }

    // Thêm kích thước
    @PostMapping("/add")
    public ResponseEntity<Size> addSize(@RequestBody Size size) {
<<<<<<< Updated upstream
=======
        String codeCategory = generateSizeCode();

        // Cập nhật mã codeCategory vào đối tượng Category
        size.setCodeSize(codeCategory);

>>>>>>> Stashed changes
        Size savedSize = sizeRepository.save(size);
        return ResponseEntity.ok(savedSize);
    }

    // Sửa kích thước theo mã
    @PutMapping("/update/{codeSize}")
    public ResponseEntity<Size> updateSize(@PathVariable String codeSize, @RequestBody Size updatedDetails) {
        Size size = sizeRepository.findByCodeSize(codeSize);

        if (size == null) {
            return ResponseEntity.notFound().build();
        }

        size.setCodeSize(updatedDetails.getCodeSize());
        size.setNamesize(updatedDetails.getNamesize());
        size.setStatussize(updatedDetails.getStatussize());
<<<<<<< Updated upstream
=======
        size.setDeleted(updatedDetails.isDeleted());
>>>>>>> Stashed changes
        Size updatedSize = sizeRepository.save(size);
        return ResponseEntity.ok(updatedSize);
    }

    // Xóa mềm kích thước
    @PutMapping("/delete/{codeSize}")
    public ResponseEntity<Size> deleteSize(@PathVariable String codeSize) {
        Size size = sizeRepository.findByCodeSize(codeSize);

        if (size == null) {
            return ResponseEntity.notFound().build();
        }

        size.setDeleted(true);
        Size updatedSize = sizeRepository.save(size);
        return ResponseEntity.ok(updatedSize);
    }

    // Lấy chi tiết kích thước theo mã
    @GetMapping("/detail/{codeSize}")
    public ResponseEntity<Size> getSizeDetail(@PathVariable String codeSize) {
        Size size = sizeRepository.findByCodeSize(codeSize);
        return ResponseEntity.ok(size);
    }
<<<<<<< Updated upstream
=======
    // Hàm tạo mã ngẫu nhiên cho Size
    private String generateSizeCode() {
        Random random = new Random();
        int randomCode = random.nextInt(100000);  // Sinh số ngẫu nhiên trong phạm vi từ 0 - 99999
        return "S" + String.format("%05d", randomCode);  // Đảm bảo mã luôn có 5 chữ số
    }

>>>>>>> Stashed changes
}
