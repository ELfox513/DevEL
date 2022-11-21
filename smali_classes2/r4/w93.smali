.class public final synthetic Lr4/w93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ij3;


# static fields
.field public static final a:Lr4/ij3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/w93;

    invoke-direct {v0}, Lr4/w93;-><init>()V

    sput-object v0, Lr4/w93;->a:Lr4/ij3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lr4/e33;

    sget-object v0, Lr4/nk3;->a:Ljava/util/regex/Pattern;

    iget-object p1, p1, Lr4/e33;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lr4/lc;->a:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_3

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method
