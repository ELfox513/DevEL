.class public final Lr4/p8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final b:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lr4/p8;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    return-void
.end method

.method public static b(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/n8;)[B
    .locals 3

    iget-object v0, p0, Lr4/p8;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v0, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    iget-object v1, p1, Lr4/n8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lr4/p8;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lr4/n8;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :try_start_1
    iget-object v1, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    invoke-static {v1, v0}, Lr4/p8;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lr4/n8;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lr4/n8;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lr4/n8;->p:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lr4/p8;->b:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p1, p0, Lr4/p8;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
