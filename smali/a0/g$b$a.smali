.class public La0/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/g$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0/a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic d:La0/g$b;


# direct methods
.method public constructor <init>(La0/g$b;Lc0/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La0/g$b$a;->d:La0/g$b;

    iput-object p2, p0, La0/g$b$a;->a:Lc0/a;

    iput-object p3, p0, La0/g$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La0/g$b$a;->a:Lc0/a;

    iget-object v1, p0, La0/g$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lc0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
