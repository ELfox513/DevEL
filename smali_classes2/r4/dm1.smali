.class public final synthetic Lr4/dm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/h83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dm1;->a:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/dm1;->a:Lr4/h83;

    check-cast p1, Lr4/cs0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lr4/j52;

    const/4 v0, 0x1

    const-string v1, "Retrieve video view in html5 ad response failed."

    invoke-direct {p1, v0, v1}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw p1
.end method
