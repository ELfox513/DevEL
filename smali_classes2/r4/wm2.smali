.class public final synthetic Lr4/wm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nl2;


# instance fields
.field public final a:Lr4/eh0;


# direct methods
.method public constructor <init>(Lr4/eh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wm2;->a:Lr4/eh0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/wm2;->a:Lr4/eh0;

    check-cast p1, Lr4/bi0;

    new-instance v1, Lr4/pi0;

    invoke-interface {v0}, Lr4/eh0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lr4/eh0;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lr4/pi0;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lr4/bi0;->G2(Lr4/vh0;)V

    return-void
.end method
