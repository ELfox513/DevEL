.class public Lcom/prineside/tdi2/ibxm/Instrument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public keyToSample:[I

.field public name:Ljava/lang/String;

.field public numSamples:I

.field public panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

.field public samples:[Lcom/prineside/tdi2/ibxm/Sample;

.field public vibratoDepth:I

.field public vibratoRate:I

.field public vibratoSweep:I

.field public vibratoType:I

.field public volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

.field public volumeFadeOut:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    new-instance v2, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    new-instance v2, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    const/16 v2, 0x61

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Sample;

    new-instance v2, Lcom/prineside/tdi2/ibxm/Sample;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Sample;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Instrument;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    new-instance v2, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    new-instance v2, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    const/16 v2, 0x61

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Sample;

    new-instance v2, Lcom/prineside/tdi2/ibxm/Sample;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Sample;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    new-instance v0, Lcom/prineside/tdi2/ibxm/Envelope;

    iget-object v2, p1, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>(Lcom/prineside/tdi2/ibxm/Envelope;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    new-instance v0, Lcom/prineside/tdi2/ibxm/Envelope;

    iget-object v2, p1, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>(Lcom/prineside/tdi2/ibxm/Envelope;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    iget-object v2, p1, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Sample;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    :goto_0
    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    new-instance v2, Lcom/prineside/tdi2/ibxm/Sample;

    iget-object v3, p1, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/ibxm/Sample;-><init>(Lcom/prineside/tdi2/ibxm/Sample;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public toStringBuffer(Ljava/lang/StringBuffer;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num Samples: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrato Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrato Sweep: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrato Depth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrato Rate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume Fade Out: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Volume Envelope:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ibxm/Envelope;->toStringBuffer(Ljava/lang/StringBuffer;)V

    const-string v0, "Panning Envelope:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ibxm/Envelope;->toStringBuffer(Ljava/lang/StringBuffer;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ibxm/Sample;->toStringBuffer(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Key To Sample: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x61

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method
