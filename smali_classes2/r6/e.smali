.class public final synthetic Lr6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr6/f;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lr6/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/e;->a:Lr6/f;

    iput-boolean p2, p0, Lr6/e;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr6/e;->a:Lr6/f;

    iget-boolean v1, p0, Lr6/e;->b:Z

    invoke-static {v0, v1}, Lr6/f;->d(Lr6/f;Z)V

    return-void
.end method
