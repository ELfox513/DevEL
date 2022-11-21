.class public final synthetic Lr4/fs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fs0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/fs0;->a:Ljava/lang/String;

    sget v1, Lr4/js0;->N:I

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/nl0;->e()Lr4/wz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/wz;->e(Ljava/lang/String;)V

    return-void
.end method
