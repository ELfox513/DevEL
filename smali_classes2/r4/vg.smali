.class public final Lr4/vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()[Lr4/pf;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/pf;

    new-instance v1, Lr4/yg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lr4/yg;-><init>(ILr4/il;Lr4/eh;)V

    aput-object v1, v0, v2

    return-object v0
.end method
