.class public final synthetic Lr4/tv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/wv1;

.field public final b:Lr4/og0;


# direct methods
.method public constructor <init>(Lr4/wv1;Lr4/og0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tv1;->a:Lr4/wv1;

    iput-object p2, p0, Lr4/tv1;->b:Lr4/og0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/tv1;->a:Lr4/wv1;

    iget-object v1, p0, Lr4/tv1;->b:Lr4/og0;

    invoke-virtual {v0, v1}, Lr4/wv1;->c(Lr4/og0;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
