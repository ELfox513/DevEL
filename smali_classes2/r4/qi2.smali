.class public final synthetic Lr4/qi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/ri2;


# direct methods
.method public constructor <init>(Lr4/ri2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qi2;->a:Lr4/ri2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/qi2;->a:Lr4/ri2;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lr4/ri2;->a(Ljava/lang/Exception;)Lr4/si2;

    const/4 p1, 0x0

    return-object p1
.end method
