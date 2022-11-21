.class public abstract Lr4/vn0;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lr4/so0;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public final a:Lr4/io0;

.field public final b:Lr4/to0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lr4/io0;

    invoke-direct {v0}, Lr4/io0;-><init>()V

    iput-object v0, p0, Lr4/vn0;->a:Lr4/io0;

    new-instance v0, Lr4/to0;

    invoke-direct {v0, p1, p0}, Lr4/to0;-><init>(Landroid/content/Context;Lr4/so0;)V

    iput-object v0, p0, Lr4/vn0;->b:Lr4/to0;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    return-void
.end method

.method public B(I)V
    .locals 0

    return-void
.end method

.method public C(I)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h(Lr4/un0;)V
.end method

.method public abstract i(Ljava/lang/String;)V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public abstract m()I
.end method

.method public abstract n()V
.end method

.method public abstract o()I
.end method

.method public abstract p(I)V
.end method

.method public abstract q(FF)V
.end method

.method public abstract r()I
.end method

.method public abstract s()I
.end method

.method public abstract t()J
.end method

.method public abstract u()J
.end method

.method public abstract v()J
.end method

.method public abstract w()I
.end method

.method public z(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/vn0;->i(Ljava/lang/String;)V

    return-void
.end method
