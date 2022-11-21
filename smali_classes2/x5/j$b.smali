.class public Lx5/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx5/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j;->w(Ljava/lang/Thread$UncaughtExceptionHandler;Le6/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx5/j;


# direct methods
.method public constructor <init>(Lx5/j;)V
    .locals 0

    iput-object p1, p0, Lx5/j$b;->a:Lx5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le6/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lx5/j$b;->a:Lx5/j;

    invoke-virtual {v0, p1, p2, p3}, Lx5/j;->I(Le6/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
