.class public final synthetic Lr4/zj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gk0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zj0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/zj0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xt0;)V
    .locals 3

    iget-object v0, p0, Lr4/zj0;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/zj0;->b:Ljava/lang/String;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v0}, Lr4/xt0;->z3(Lf4/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
