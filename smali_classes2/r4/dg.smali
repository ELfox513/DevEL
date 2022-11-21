.class public final Lr4/dg;
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
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/pf;

    new-instance v1, Lr4/hg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr4/hg;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
