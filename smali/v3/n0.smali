.class public final synthetic Lv3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lv3/j;


# direct methods
.method public constructor <init>(Lv3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/n0;->a:Lv3/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv3/n0;->a:Lv3/j;

    invoke-virtual {v0}, Lv3/j;->q()V

    return-void
.end method
