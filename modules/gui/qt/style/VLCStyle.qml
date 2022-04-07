/*****************************************************************************
 * Copyright (C) 2019 VLC authors and VideoLAN
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * ( at your option ) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/
pragma Singleton
import QtQuick 2.11
import org.videolan.vlc 0.1

QtObject {
    id: vlc_style

    readonly property real scale: MainCtx.intfScaleFactor

    readonly property FontMetrics fontMetrics_xxsmall  : FontMetrics { font.pixelSize: dp(6, scale);  }
    readonly property FontMetrics fontMetrics_xsmall   : FontMetrics { font.pixelSize: dp(8, scale);  }
    readonly property FontMetrics fontMetrics_small    : FontMetrics { font.pixelSize: dp(10, scale); }
    readonly property FontMetrics fontMetrics_normal   : FontMetrics { font.pixelSize: dp(12, scale); }
    readonly property FontMetrics fontMetrics_large    : FontMetrics { font.pixelSize: dp(14, scale); }
    readonly property FontMetrics fontMetrics_xlarge   : FontMetrics { font.pixelSize: dp(16, scale); }
    readonly property FontMetrics fontMetrics_xxlarge  : FontMetrics { font.pixelSize: dp(20, scale); }
    readonly property FontMetrics fontMetrics_xxxlarge : FontMetrics { font.pixelSize: dp(24, scale); }

    property alias self: vlc_style

    readonly property VLCColors colors: VLCColors {}

    // When trying to force night/dark theme colors for items,
    // this can be used:
    readonly property VLCColors nightColors: VLCColors { state: "night" }

    // Sizes
    readonly property double margin_xxxsmall: dp(2, scale);
    readonly property double margin_xxsmall: dp(4, scale);
    readonly property double margin_xsmall: dp(8, scale);
    readonly property double margin_small: dp(12, scale);
    readonly property double margin_normal: dp(16, scale);
    readonly property double margin_large: dp(24, scale);
    readonly property double margin_xlarge: dp(32, scale);
    readonly property double margin_xxlarge: dp(36, scale);

    // Borders
    readonly property int border: dp(1, scale)
    readonly property int focus_border: border

    readonly property int fontSize_xsmall: fontMetrics_xsmall.font.pixelSize
    readonly property int fontSize_small:  fontMetrics_small.font.pixelSize
    readonly property int fontSize_normal: fontMetrics_normal.font.pixelSize
    readonly property int fontSize_large:  fontMetrics_large.font.pixelSize
    readonly property int fontSize_xlarge: fontMetrics_xlarge.font.pixelSize
    readonly property int fontSize_xxlarge: fontMetrics_xxlarge.font.pixelSize
    readonly property int fontSize_xxxlarge: fontMetrics_xxxlarge.font.pixelSize

    readonly property int fontHeight_xsmall: Math.ceil(fontMetrics_xsmall.lineSpacing)
    readonly property int fontHeight_small:  Math.ceil(fontMetrics_small.lineSpacing)
    readonly property int fontHeight_normal: Math.ceil(fontMetrics_normal.lineSpacing)
    readonly property int fontHeight_large:  Math.ceil(fontMetrics_large.lineSpacing)
    readonly property int fontHeight_xlarge: Math.ceil(fontMetrics_xlarge.lineSpacing)
    readonly property int fontHeight_xxlarge: Math.ceil(fontMetrics_xxlarge.lineSpacing)
    readonly property int fontHeight_xxxlarge: Math.ceil(fontMetrics_xxxlarge.lineSpacing)


    readonly property int heightAlbumCover_xsmall: dp(32, scale);
    readonly property int heightAlbumCover_small: dp(64, scale);
    readonly property int heightAlbumCover_normal: dp(128, scale);
    readonly property int heightAlbumCover_large: dp(255, scale);
    readonly property int heightAlbumCover_xlarge: dp(512, scale);

    readonly property int listAlbumCover_height: dp(32, scale)
    readonly property int listAlbumCover_width: listAlbumCover_height * 16.0/9
    readonly property int listAlbumCover_radius: dp(3, scale)
    readonly property int trackListAlbumCover_width: dp(32, scale)
    readonly property int trackListAlbumCover_heigth: dp(32, scale)
    readonly property int trackListAlbumCover_radius: dp(2, scale)

    readonly property int tableCoverRow_height: Math.max(listAlbumCover_height, fontHeight_normal) + margin_xsmall * 2
    readonly property int tableRow_height: fontHeight_normal + margin_small * 2

    readonly property int icon_xsmall: dp(8, scale);
    readonly property int icon_small: dp(16, scale);
    readonly property int icon_normal: dp(32, scale);
    readonly property int icon_medium: dp(48, scale);
    readonly property int icon_large: dp(64, scale);
    readonly property int icon_xlarge: dp(128, scale);

    readonly property int icon_topbar: dp(38, scale)
    readonly property int icon_checkedDelegate: dp(40, scale)

    readonly property int play_cover_small: dp(24, scale)
    readonly property int play_cover_normal: dp(48, scale)

    readonly property int cover_xxsmall: dp(32, scale);
    readonly property int cover_xsmall: dp(64, scale);
    readonly property int cover_small: dp(96, scale);
    readonly property int cover_normal: dp(128, scale);
    readonly property int cover_large: dp(160, scale);
    readonly property int cover_xlarge: dp(192, scale);

    readonly property int heightBar_xxxsmall: dp(2, scale);
    readonly property int heightBar_xxsmall: dp(4, scale);
    readonly property int heightBar_xsmall: dp(8, scale);
    readonly property int heightBar_small: dp(16, scale);
    readonly property int heightBar_normal: dp(32, scale);
    readonly property int heightBar_medium: dp(48, scale);
    readonly property int heightBar_large: dp(64, scale);
    readonly property int heightBar_xlarge: dp(128, scale);
    readonly property int heightBar_xxlarge: dp(256, scale);

    readonly property int minWindowWidth: dp(500, scale);
    readonly property int maxWidthPlaylist: dp(400, scale);
    readonly property int defaultWidthPlaylist: dp(300, scale);
    readonly property int closedWidthPlaylist: dp(20, scale);

    readonly property int widthSearchInput: dp(200, scale);
    readonly property int widthSortBox: dp(150, scale);
    readonly property int widthTeletext: dp(280, scale);
    readonly property int widthExtendedSpacer: dp(128, scale);
    readonly property int heightInput: dp(22, scale);

    readonly property int scrollbarWidth: dp(4, scale);
    readonly property int scrollbarHeight: dp(100, scale);

    readonly property real network_normal: dp(100, scale)

    readonly property int expandAlbumTracksHeight: dp(200, scale)

    //combobox
    readonly property int combobox_width_small: dp(64, scale)
    readonly property int combobox_width_normal: dp(96, scale)
    readonly property int combobox_width_large: dp(128, scale)

    readonly property int combobox_height_small: dp(16, scale)
    readonly property int combobox_height_normal: dp(24, scale)
    readonly property int combobox_height_large: dp(30, scale)

    //button
    readonly property int button_width_small: dp(64, scale)
    readonly property int button_width_normal: dp(96, scale)
    readonly property int button_width_large: dp(128, scale)

    readonly property int table_section_width: dp(32, scale)
    readonly property int table_section_text_margin: dp(10, scale)

    readonly property int gridCover_network_width: colWidth(1)
    readonly property int gridCover_network_height: gridCover_network_width
    readonly property int gridCover_network_border: dp(3, scale)

    readonly property int gridCover_music_width: colWidth(1)
    readonly property int gridCover_music_height: gridCover_music_width
    readonly property int gridCover_music_border: dp(3, scale)

    readonly property int gridCover_video_width: colWidth(2)
    readonly property int gridCover_video_height: ( gridCover_video_width * 10.0 ) / 16
    readonly property int gridCover_video_border: dp(4, scale)

    readonly property int gridCover_radius: dp(4, scale)

    readonly property int expandCover_music_height: dp(171, scale)
    readonly property int expandCover_music_width: dp(171, scale)
    readonly property int expandCover_music_radius: gridCover_radius
    readonly property int expandDelegate_border: dp(1, scale)

    readonly property int artistGridCover_radius: dp(90, scale)

    //GridItem
    readonly property int gridItem_network_width: VLCStyle.gridCover_network_width
    readonly property int gridItem_network_height: VLCStyle.gridCover_network_height + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal

    readonly property int gridItem_music_width: VLCStyle.gridCover_music_width
    readonly property int gridItem_music_height: VLCStyle.gridCover_music_height + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal + VLCStyle.margin_xsmall + VLCStyle.fontHeight_small

    readonly property int gridItem_video_width: VLCStyle.gridCover_video_width
    readonly property int gridItem_video_height: VLCStyle.gridCover_video_height + VLCStyle.margin_xxsmall + VLCStyle.fontHeight_normal + VLCStyle.fontHeight_normal

    readonly property int gridItemSelectedBorder: dp(8, scale)

    readonly property int gridItem_newIndicator: dp(8, scale)

    readonly property int column_width: dp(114, scale)
    readonly property int column_margin_width: dp(32, scale)

    readonly property int table_cover_border: dp(2, scale)

    readonly property int artistBanner_height: dp(200, scale)

    //global application size, updated by the root widget
    property int appWidth: 0
    property int appHeight: 0

    //global application margin "safe area"
    readonly property int applicationHorizontalMargin: 0
    readonly property int applicationVerticalMargin: 0

    readonly property int globalToolbar_height: dp(40, scale)
    readonly property int localToolbar_height: dp(48, scale)
    readonly property int banner_icon_size: dp(28, scale)

    readonly property int bannerTabButton_width_small: banner_icon_size
    readonly property int bannerTabButton_width_large: column_width

    readonly property int bannerButton_height: dp(32, scale)
    readonly property int bannerButton_width: dp(40, scale)

    // Drag and drop

    readonly property int dragDelta: dp(12, scale)

    // Speed

    property bool animate: true

    property real speed: 1.0

    // NOTE: This ratio is useful because we want a 1.2 speed to be *faster* than 1.0.
    readonly property real ratioSpeed: (animate && speed) ? 1 / speed : 0.0

    // duration

    readonly property int duration_slower: 300 * ratioSpeed
    readonly property int duration_slow  : 250 * ratioSpeed
    readonly property int duration_normal: 200 * ratioSpeed
    readonly property int duration_fast  : 150 * ratioSpeed
    readonly property int duration_faster: 100 * ratioSpeed

    readonly property int ms2000: 2000 * ratioSpeed
    readonly property int ms1000: 1000 * ratioSpeed

    readonly property int ms500: 500 * ratioSpeed
    readonly property int ms140: 140 * ratioSpeed
    readonly property int ms128: 128 * ratioSpeed
    readonly property int ms125: 125 * ratioSpeed

    readonly property int ms75: 75 * ratioSpeed
    readonly property int ms64: 64 * ratioSpeed
    readonly property int ms10: 10 * ratioSpeed

    //timings
    readonly property int delayToolTipAppear: 500

    //default arts
    readonly property url noArtAlbum: "qrc:///noart_album.svg";
    readonly property url noArtArtist: "qrc:///noart_artist.svg";
    readonly property url noArtArtistSmall: "qrc:///noart_artist_small.svg";
    readonly property url noArtAlbumCover: "qrc:///noart_albumCover.svg";
    readonly property url noArtArtistCover: "qrc:///noart_artistCover.svg";
    readonly property url noArtVideoCover: "qrc:///noart_videoCover.svg";

    // Play shadow
    readonly property url playShadow: "qrc:///play_shadow.png";

    // New indicator
    readonly property url newIndicator: "qrc:///new_indicator.svg";

    // Player controlbar
    readonly property int maxControlbarControlHeight: dp(64, scale)

    //device pixel
    function dp(px, scale) {
        if (typeof scale === "undefined")
            scale = MainCtx.intfScaleFactor

        var scaledPx = Math.round(px * scale)
        if (scaledPx < 0)
            return Math.min(-1, scaledPx)
        else if (scaledPx > 0)
            return Math.max(1, scaledPx)
        else // scaledPx == 0
            return 0
    }

    function colWidth(nb) {
      return nb * VLCStyle.column_width + ( nb - 1 ) * VLCStyle.column_margin_width;
    }

    //Returns the number columns fitting in given width
    function gridColumnsForWidth(width) {
        return Math.floor((width + column_margin_width) / (column_width + column_margin_width))
    }

}
