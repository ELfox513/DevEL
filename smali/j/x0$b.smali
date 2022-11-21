.class public Lj/x0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lj/x0;


# direct methods
.method public constructor <init>(Lj/x0;)V
    .locals 0

    iput-object p1, p0, Lj/x0$b;->a:Lj/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lj/x0$b;->a:Lj/x0;

    invoke-virtual {v0}, Lj/x0;->e()V

    return-void
.end method
