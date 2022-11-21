.class public final Lr4/cs1;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lr4/e5;


# direct methods
.method public constructor <init>(ILr4/e5;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AudioTrack write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lr4/cs1;->a:Z

    iput-object p2, p0, Lr4/cs1;->b:Lr4/e5;

    return-void
.end method
