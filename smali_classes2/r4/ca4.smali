.class public final Lr4/ca4;
.super Lr4/fr3;
.source "SourceFile"


# static fields
.field public static final t:Lr4/mr3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lr4/ca4;

    invoke-static {v0}, Lr4/mr3;->b(Ljava/lang/Class;)Lr4/mr3;

    move-result-object v0

    sput-object v0, Lr4/ca4;->t:Lr4/mr3;

    return-void
.end method

.method public constructor <init>(Lr4/gr3;Lr4/ba4;)V
    .locals 2

    invoke-direct {p0}, Lr4/fr3;-><init>()V

    invoke-interface {p1}, Lr4/gr3;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lr4/fr3;->g(Lr4/gr3;JLr4/ba4;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr4/fr3;->b:Lr4/gr3;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "model("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
