.class public final synthetic Lr4/tj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gk0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tj0;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/tj0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xt0;)V
    .locals 3

    iget-object v0, p0, Lr4/tj0;->a:Ljava/lang/String;

    iget-object v1, p0, Lr4/tj0;->b:Landroid/os/Bundle;

    const-string v2, "am"

    invoke-interface {p1, v2, v0, v1}, Lr4/xt0;->u1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
