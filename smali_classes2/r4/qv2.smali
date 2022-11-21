.class public final Lr4/qv2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ax2;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/ev2;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lr4/ev2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lr4/ax2;

    invoke-direct {p3, p1}, Lr4/ax2;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lr4/qv2;->a:Lr4/ax2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/qv2;->b:Ljava/lang/String;

    iput-object p2, p0, Lr4/qv2;->c:Lr4/ev2;

    const-string p1, "Ad overlay"

    iput-object p1, p0, Lr4/qv2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lr4/ax2;
    .locals 1

    iget-object v0, p0, Lr4/qv2;->a:Lr4/ax2;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/qv2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lr4/ev2;
    .locals 1

    iget-object v0, p0, Lr4/qv2;->c:Lr4/ev2;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/qv2;->d:Ljava/lang/String;

    return-object v0
.end method
