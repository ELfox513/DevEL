.class final Lcom/prineside/luaj/LuaString$RecentShortStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecentShortStrings"
.end annotation


# static fields
.field public static final a:[Lcom/prineside/luaj/LuaString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [Lcom/prineside/luaj/LuaString;

    sput-object v0, Lcom/prineside/luaj/LuaString$RecentShortStrings;->a:[Lcom/prineside/luaj/LuaString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Lcom/prineside/luaj/LuaString;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaString$RecentShortStrings;->a:[Lcom/prineside/luaj/LuaString;

    return-object v0
.end method
