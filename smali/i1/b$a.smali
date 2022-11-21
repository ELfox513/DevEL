.class public Li1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/b;


# direct methods
.method public constructor <init>(Li1/b;)V
    .locals 0

    iput-object p1, p0, Li1/b$a;->a:Li1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Li1/b$a;->a:Li1/b;

    invoke-virtual {v0, p1}, Li1/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
