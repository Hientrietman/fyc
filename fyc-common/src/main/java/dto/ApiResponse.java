package dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ApiResponse<T> {

    @Builder.Default
    private int code = 1000; // Mã status quy ước riêng

    private String message;
    private T result;

    @Builder.Default
    private LocalDateTime timestamp = LocalDateTime.now();
}