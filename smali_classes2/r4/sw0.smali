.class public final Lr4/sw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/t00;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/qw0;


# direct methods
.method public constructor <init>(Lr4/qw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sw0;->a:Lr4/qw0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/t00;

    invoke-direct {v0}, Lr4/t00;-><init>()V

    return-object v0
.end method
