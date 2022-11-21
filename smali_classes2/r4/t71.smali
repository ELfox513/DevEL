.class public final synthetic Lr4/t71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Lr4/ch1;


# direct methods
.method public constructor <init>(Lr4/ch1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t71;->a:Lr4/ch1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/t71;->a:Lr4/ch1;

    check-cast p1, Lr4/z71;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/z71;->o(Lr4/lt;)V

    return-void
.end method
