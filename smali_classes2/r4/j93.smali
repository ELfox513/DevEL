.class public final Lr4/j93;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lr4/ao3;",
        "KeyProtoT::",
        "Lr4/ao3;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o93<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o93;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o93<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j93;->a:Lr4/o93;

    return-void
.end method


# virtual methods
.method public final a(Lr4/ll3;)Lr4/ao3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ll3;",
            ")TKeyProtoT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/j93;->a:Lr4/o93;

    invoke-virtual {v0, p1}, Lr4/o93;->c(Lr4/ll3;)Lr4/ao3;

    move-result-object p1

    iget-object v0, p0, Lr4/j93;->a:Lr4/o93;

    invoke-virtual {v0, p1}, Lr4/o93;->b(Lr4/ao3;)V

    iget-object v0, p0, Lr4/j93;->a:Lr4/o93;

    invoke-virtual {v0, p1}, Lr4/o93;->d(Lr4/ao3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
