.class public Lx5/t$a$a;
.super Lx5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/t$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lx5/t$a;


# direct methods
.method public constructor <init>(Lx5/t$a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lx5/t$a$a;->b:Lx5/t$a;

    iput-object p2, p0, Lx5/t$a$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lx5/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lx5/t$a$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
