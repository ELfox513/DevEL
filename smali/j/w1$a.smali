.class public Lj/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/w1;


# direct methods
.method public constructor <init>(Lj/w1;)V
    .locals 0

    iput-object p1, p0, Lj/w1$a;->a:Lj/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj/w1$a;->a:Lj/w1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/w1;->g(Z)V

    return-void
.end method
