from pytube import YouTube
import subprocess

# Hàm để tải và phát video từ URL YouTube
def play_youtube_video(url):
    try:
        # Tạo đối tượng YouTube từ URL
        yt = YouTube(url)

        # Chọn định dạng video có chất lượng tốt nhất
        video = yt.streams.get_highest_resolution()

        # Tải video về thư mục hiện tại
        video.download()

        # Phát video sử dụng mpv
        subprocess.run(['mpv', f'{yt.title}.mp4'])

    except Exception as e:
        print(f"Đã xảy ra lỗi: {str(e)}")

# Thực thi hàm với URL YouTube
if __name__ == "__main__":
    youtube_url = input("Nhập URL YouTube: ")
    play_youtube_video(youtube_url)
