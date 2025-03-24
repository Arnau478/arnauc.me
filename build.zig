const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) void {
    const typst = b.addSystemCommand(&.{ "typst", "compile" });
    typst.addArg("--font-path");
    typst.addDirectoryArg(b.path("cv"));
    typst.addFileArg(b.path("cv/main.typ"));
    const cv = typst.addOutputFileArg("cv.pdf");

    zine.website(b, .{
        .title = "Arnau Camprubí",
        .host_url = "https://arnauc.me",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "CNAME",
            "fonts/Vollkorn-Black.ttf",
            "fonts/Vollkorn-BlackItalic.ttf",
            "fonts/Vollkorn-Bold.ttf",
            "fonts/Vollkorn-BoldItalic.ttf",
            "fonts/Vollkorn-ExtraBold.ttf",
            "fonts/Vollkorn-ExtraBoldItalic.ttf",
            "fonts/Vollkorn-Italic.ttf",
            "fonts/Vollkorn-Medium.ttf",
            "fonts/Vollkorn-MediumItalic.ttf",
            "fonts/Vollkorn-Regular.ttf",
            "fonts/Vollkorn-SemiBold.ttf",
            "fonts/Vollkorn-SemiBoldItalic.ttf",
        },
        .build_assets = &.{
            .{ .name = "cv", .lp = cv, .install_path = "cv.pdf", .install_always = true },
        },
    });
}
