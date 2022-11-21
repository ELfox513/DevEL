.class public abstract Lh1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh1/a$a;)V
    .locals 0

    invoke-direct {p0}, Lh1/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lh1/a;Lh1/a$e;Lh1/a$e;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Lh1/a$e;",
            "Lh1/a$e;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract b(Lh1/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract c(Lh1/a;Lh1/a$i;Lh1/a$i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Lh1/a$i;",
            "Lh1/a$i;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract d(Lh1/a$i;Lh1/a$i;)V
.end method

.method public abstract e(Lh1/a$i;Ljava/lang/Thread;)V
.end method
