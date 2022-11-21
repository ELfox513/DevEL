.class public final Lr4/mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lr4/qi;


# direct methods
.method public constructor <init>(Lr4/qi;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lr4/mi;->b:Lr4/qi;

    iput-object p2, p0, Lr4/mi;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/mi;->b:Lr4/qi;

    invoke-static {v0}, Lr4/qi;->v(Lr4/qi;)Lr4/ri;

    move-result-object v0

    iget-object v1, p0, Lr4/mi;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lr4/ri;->c(Ljava/io/IOException;)V

    return-void
.end method
