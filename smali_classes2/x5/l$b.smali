.class public Lx5/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/l;->h(Le6/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le6/e;

.field public final synthetic b:Lx5/l;


# direct methods
.method public constructor <init>(Lx5/l;Le6/e;)V
    .locals 0

    iput-object p1, p0, Lx5/l$b;->b:Lx5/l;

    iput-object p2, p0, Lx5/l$b;->a:Le6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lx5/l$b;->b:Lx5/l;

    iget-object v1, p0, Lx5/l$b;->a:Le6/e;

    invoke-static {v0, v1}, Lx5/l;->a(Lx5/l;Le6/e;)Lj5/i;

    return-void
.end method
