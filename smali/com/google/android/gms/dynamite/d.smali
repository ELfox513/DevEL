.class public final Lcom/google/android/gms/dynamite/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/j;)Lcom/google/android/gms/dynamite/k;
    .locals 2

    new-instance v0, Lcom/google/android/gms/dynamite/k;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/k;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/j;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/k;->b:I

    if-nez p1, :cond_0

    iput v1, v0, Lcom/google/android/gms/dynamite/k;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/k;->c:I

    :goto_0
    return-object v0
.end method
