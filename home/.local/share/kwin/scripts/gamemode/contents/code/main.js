/********************************************************************
 KWin - the KDE window manager
 This file is part of the KDE project.

 Copyright (C) 2013 Thomas Lübking <thomas.luebking@gmail.com>
 Blatant rip-off the videowall script
Copyright (C) 2012 Martin Gräßlin <mgraesslin@kde.org>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************/

var GAMES = Array("vlc", "smplayer", "dragon", "mplayer", "ffplay", "kodi");

function runsTheShow(client) {
    return GAMES.indexOf(client.resourceClass.toString()) > -1;
}

function isUnmanagedGame(unmanaged) {
    var geo1 = unmanaged.geometry;
    if (geo1.x != 0 || geo1.y != 0)
        return false;
    var geo2 = workspace.clientArea(4, workspace.activeScreen, workspace.currentDesktop);
    if (geo1.width < geo2.width || geo1.height < geo2.height || geo1.y != geo2.y || geo1.y != geo2.y)
        return false;
    return true;
}

var runTheShow = function(client, isFullscreen) {
    if (runsTheShow(client)) {
        client.blocksCompositing = isFullscreen;
    }
};

var unmanagedAdded = function(unmanaged) {
    if (isUnmanagedGame(unmanaged))
        unmanaged.blocksCompositing = true;
};

var clientAdded = function(client) {
    if (client.fullScreen)
        runTheShow(client, true);
}

workspace.clientFullScreenSet.connect(runTheShow);
workspace.unmanagedAdded.connect(unmanagedAdded);
workspace.clientAdded.connect(clientAdded);
