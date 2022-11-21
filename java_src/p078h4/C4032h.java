package p078h4;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.Locale;
@Deprecated
/* renamed from: h4.h */
/* loaded from: classes.dex */
public final class C4032h {
    @RecentlyNonNull
    /* renamed from: a */
    public static String m17515a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                if (i != 6) {
                                    if (i != 7) {
                                        if (i != 14) {
                                            if (i != 15) {
                                                if (i != 6500) {
                                                    if (i != 6501) {
                                                        switch (i) {
                                                            case 7:
                                                                return "STATUS_LICENSE_CHECK_FAILED";
                                                            case 8:
                                                                return "STATUS_APP_MISCONFIGURED";
                                                            case 9:
                                                                return "STATUS_GAME_NOT_FOUND";
                                                            case 500:
                                                                return "STATUS_RESOLVE_STALE_OR_NO_DATA";
                                                            case 1500:
                                                                return "STATUS_PLAYER_OOB_REQUIRED";
                                                            case 4006:
                                                                return "STATUS_SNAPSHOT_CONFLICT_MISSING";
                                                            case 8000:
                                                                return "STATUS_MILESTONE_CLAIMED_PREVIOUSLY";
                                                            case 8001:
                                                                return "STATUS_MILESTONE_CLAIM_FAILED";
                                                            case 8002:
                                                                return "STATUS_QUEST_NO_LONGER_AVAILABLE";
                                                            case 8003:
                                                                return "STATUS_QUEST_NOT_STARTED";
                                                            case 9000:
                                                                return "STATUS_VIDEO_NOT_ACTIVE";
                                                            case 9001:
                                                                return "STATUS_VIDEO_UNSUPPORTED";
                                                            case 9002:
                                                                return "STATUS_VIDEO_PERMISSION_ERROR";
                                                            case 9003:
                                                                return "STATUS_VIDEO_STORAGE_ERROR";
                                                            case 9004:
                                                                return "STATUS_VIDEO_UNEXPECTED_CAPTURE_ERROR";
                                                            case 9006:
                                                                return "STATUS_VIDEO_ALREADY_CAPTURING";
                                                            case 9009:
                                                                return "STATUS_VIDEO_OUT_OF_DISK_SPACE";
                                                            case 9010:
                                                                return "STATUS_VIDEO_NO_MIC";
                                                            case 9011:
                                                                return "STATUS_VIDEO_NO_CAMERA";
                                                            case 9012:
                                                                return "STATUS_VIDEO_SCREEN_OFF";
                                                            case 9016:
                                                                return "STATUS_VIDEO_RELEASE_TIMEOUT";
                                                            case 9017:
                                                                return "STATUS_VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED";
                                                            case 9200:
                                                                return "STATUS_VIDEO_MISSING_OVERLAY_PERMISSION";
                                                            case 10000:
                                                                return "STATUS_CLIENT_LOADING";
                                                            case 10001:
                                                                return "STATUS_CLIENT_EMPTY";
                                                            case 10002:
                                                                return "STATUS_CLIENT_HIDDEN";
                                                            case 10003:
                                                                return "STATUS_CONSENT_REQUIRED";
                                                            default:
                                                                switch (i) {
                                                                    case CoreTile.FIXED_LEVEL_XP_REQUIREMENT /* 1000 */:
                                                                        return "STATUS_AUTH_ERROR_HARD";
                                                                    case 1001:
                                                                        return "STATUS_AUTH_ERROR_USER_RECOVERABLE";
                                                                    case 1002:
                                                                        return "STATUS_AUTH_ERROR_UNREGISTERED_CLIENT_ID";
                                                                    case 1003:
                                                                        return "STATUS_AUTH_ERROR_API_ACCESS_DENIED";
                                                                    case 1004:
                                                                        return "STATUS_AUTH_ERROR_ACCOUNT_NOT_USABLE";
                                                                    case 1005:
                                                                        return "STATUS_AUTH_ERROR_ACCOUNT_UNICORN";
                                                                    case 1006:
                                                                        return "STATUS_AUTH_ERROR_SERVICE_CACHE_MISTAKE";
                                                                    default:
                                                                        switch (i) {
                                                                            case 2000:
                                                                                return "STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS";
                                                                            case 2001:
                                                                                return "STATUS_REQUEST_UPDATE_TOTAL_FAILURE";
                                                                            case 2002:
                                                                                return "STATUS_REQUEST_TOO_MANY_RECIPIENTS";
                                                                            default:
                                                                                switch (i) {
                                                                                    case 3000:
                                                                                        return "STATUS_ACHIEVEMENT_UNLOCK_FAILURE";
                                                                                    case 3001:
                                                                                        return "STATUS_ACHIEVEMENT_UNKNOWN";
                                                                                    case 3002:
                                                                                        return "STATUS_ACHIEVEMENT_NOT_INCREMENTAL";
                                                                                    case 3003:
                                                                                        return "STATUS_ACHIEVEMENT_UNLOCKED";
                                                                                    default:
                                                                                        switch (i) {
                                                                                            case 4000:
                                                                                                return "STATUS_SNAPSHOT_NOT_FOUND";
                                                                                            case 4001:
                                                                                                return "STATUS_SNAPSHOT_CREATION_FAILED";
                                                                                            case 4002:
                                                                                                return "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE";
                                                                                            case 4003:
                                                                                                return "STATUS_SNAPSHOT_COMMIT_FAILED";
                                                                                            case 4004:
                                                                                                return "STATUS_SNAPSHOT_CONFLICT";
                                                                                            default:
                                                                                                switch (i) {
                                                                                                    case 6000:
                                                                                                        return "STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED";
                                                                                                    case 6001:
                                                                                                        return "STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER";
                                                                                                    case 6002:
                                                                                                        return "STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE";
                                                                                                    case 6003:
                                                                                                        return "STATUS_MULTIPLAYER_DISABLED";
                                                                                                    default:
                                                                                                        switch (i) {
                                                                                                            case 6503:
                                                                                                                return "STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION";
                                                                                                            case 6504:
                                                                                                                return "STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS";
                                                                                                            case 6505:
                                                                                                                return "STATUS_MATCH_ERROR_ALREADY_REMATCHED";
                                                                                                            case 6506:
                                                                                                                return "STATUS_MATCH_NOT_FOUND";
                                                                                                            case 6507:
                                                                                                                return "STATUS_MATCH_ERROR_LOCALLY_MODIFIED";
                                                                                                            default:
                                                                                                                switch (i) {
                                                                                                                    case 7000:
                                                                                                                        return "STATUS_REAL_TIME_CONNECTION_FAILED";
                                                                                                                    case 7001:
                                                                                                                        return "STATUS_REAL_TIME_MESSAGE_SEND_FAILED";
                                                                                                                    case 7002:
                                                                                                                        return "STATUS_INVALID_REAL_TIME_ROOM_ID";
                                                                                                                    case 7003:
                                                                                                                        return "STATUS_PARTICIPANT_NOT_CONNECTED";
                                                                                                                    case 7004:
                                                                                                                        return "STATUS_REAL_TIME_ROOM_NOT_JOINED";
                                                                                                                    case 7005:
                                                                                                                        return "STATUS_REAL_TIME_INACTIVE_ROOM";
                                                                                                                    case 7006:
                                                                                                                        return "STATUS_REAL_TIME_SERVICE_NOT_CONNECTED";
                                                                                                                    case 7007:
                                                                                                                        return "STATUS_OPERATION_IN_FLIGHT";
                                                                                                                    default:
                                                                                                                        return String.format(Locale.US, "Status code (%d) not found!", Integer.valueOf(i));
                                                                                                                }
                                                                                                        }
                                                                                                }
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                    }
                                                    return "STATUS_MATCH_ERROR_INACTIVE_MATCH";
                                                }
                                                return "STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE";
                                            }
                                            return "STATUS_TIMEOUT";
                                        }
                                        return "STATUS_INTERRUPTED";
                                    }
                                    return "STATUS_LICENSE_CHECK_FAILED";
                                }
                                return "STATUS_NETWORK_ERROR_OPERATION_FAILED";
                            }
                            return "STATUS_NETWORK_ERROR_OPERATION_DEFERRED";
                        }
                        return "STATUS_NETWORK_ERROR_NO_DATA";
                    }
                    return "STATUS_NETWORK_ERROR_STALE_DATA";
                }
                return "STATUS_CLIENT_RECONNECT_REQUIRED";
            }
            return "STATUS_INTERNAL_ERROR";
        }
        return "STATUS_OK";
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static Status m17514b(int i) {
        return new Status(i, m17515a(i));
    }
}
