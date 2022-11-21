.class public abstract Lr4/yu2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lr4/zu2;Lr4/av2;)Lr4/yu2;
    .locals 1

    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr4/cv2;

    invoke-direct {v0, p0, p1}, Lr4/cv2;-><init>(Lr4/zu2;Lr4/av2;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroid/view/View;Lr4/ev2;Ljava/lang/String;)V
.end method
